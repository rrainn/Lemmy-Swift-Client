const path = require("path");
const fs = require("fs").promises;

(async () => {
	// Delete existing files
	await fs.rm(path.join(__dirname, "..", "Sources", "Lemmy-Swift-Client", "Lemmy API"), { recursive: true, force: true });

	// Read all the files in the types folder
	const ignoredFiles = [
		"others.ts",
		"PostOrCommentId.ts"
	];
	const files = (await fs.readdir(path.join(__dirname, "..", "lemmy-js-client", "src", "types"))).filter((a) => a.endsWith(".ts") && !a.startsWith(".") && !ignoredFiles.includes(a));

	const httpFile = await fs.readFile(path.join(__dirname, "..", "lemmy-js-client", "src", "http.ts"), "utf-8");
	const requests = {};
	for (const request of [...httpFile.matchAll(/  \/\*\*\n   \* (.*)\n(?:.|\n)+?\(form: (.*?)(?: = \{\})?\) \{\n.+<(.*), (.*)>\(\s*HttpType\.(.*?),\s*"(.*)",\s*form/gmu)]) {
		requests[request[2]] = {
			"originalName": request[2],
			"name": request[2] + "Request",
			"response": request[4],
			"comment": request[1],
			"path": request[6],
			"method": request[5].toLowerCase(),
		};
	}

	const pendingResponses = {};

	// Loop through all the files
	for (const fileName of files) {
		const file = await fs.readFile(path.join(__dirname, "..", "lemmy-js-client", "src", "types", fileName), "utf-8");
		const requestValue = requests[fileName.replace(".ts", "")];
		const isRequest = requestValue !== undefined;
		const responseValue = Object.values(requests).find((a) => a.response === fileName.replace(".ts", ""));
		const isResponse = responseValue !== undefined;

		let result = "";
		if (!isResponse) {
			result += "import Foundation\n\n";
		}

		let type = "";
		if (file.includes("export type ")) {
			if (/export type (.*) = ([a-zA-Z\/\* ]*?);/gu.exec(file)) {
				const regexResult = /export type (.*) = ([a-zA-Z\/\* ]*?);/gu.exec(file);

				const swiftType = tsToSwiftType(regexResult[2]);
				if (swiftType === undefined) {
					result += `public struct ${regexResult[1]}: APIResponse {
	public init() {}
}
					`;
					type = "Structs";
				} else {
					result += `public typealias ${regexResult[1]} = ${swiftType}\n`;
					type = "Types";
				}
			} else {
				result += `public enum ${/export type (.*) =/gu.exec(file)[1]}: String, Codable, CustomStringConvertible, CaseIterable {\n`;
				const cases = [...file.matchAll(/"(.*?)"/gu)];
				for (const caseName of cases.filter((a) => !!a[1])) {
					result += `\tcase ${lowercaseFirstLetter(caseName[1])} = "${caseName[1]}"\n`;
				}
				result += `
	public var description: String {
		return rawValue
	}
`;
				result += "}\n";
				type = "Enums";
			}
		} else if (file.includes("export interface ")) {
			const protocols = (() => {
				if (isRequest) {
					return "APIRequest";
				} else if (isResponse) {
					return "APIResponse";
				} else {
					return "Codable, Identifiable, Hashable";
				}
			})();
			result += `public struct ${/export interface (.*) \{/gu.exec(file)[1]}${isRequest ? "Request" : ""}: ${protocols} {\n`;
			if (isRequest) {
				result += `	public typealias Response = ${requestValue.response}

	public static let httpMethod: HTTPMethod = .${requestValue.method}
	public static let path: String = "${requestValue.path}"

`;
			}
			const properties = [...file.matchAll(/  (.*): (.*);/gu)];
			const parsedProperties = [];
			for (const propertyName of properties.filter((a) => !!a[1])) {
				let name = propertyName[1].trim();
				// Since the API is pretty unstable at this point we will make all properties optional. That way it won't fail to parse the response if a property is removed or renamed in a future version of the API.
				let isOptional = true;
				if (name.endsWith("?")) {
					name = name.substring(0, name.length - 1);
					isOptional = true;
				}
				const type = tsToSwiftType(propertyName[2]) ?? propertyName[2];
				result += `\tpublic let ${name}: ${type}${isOptional ? "?" : ""}\n`;
				parsedProperties.push({ name, type, isOptional });
			}
			result += `
	public init(
		${parsedProperties.map((a) => `${a.name}: ${a.type}${a.isOptional ? "?" : ""}${a.isOptional ? " = nil" : ""}`).join(",\n\t\t")}
	) {
		${parsedProperties.map((a) => `self.${a.name} = ${a.name}`).join("\n\t\t")}
	}
`;
			result += "}\n";
			if (!properties.some((a) => a[1] === "id")) {
				result = result.replace("Identifiable, ", "");
			}
			type = "Structs";
		} else {
			throw new Error(`No types found: ${file}`);
		}

		if (result) {
			if (isResponse) {
				pendingResponses[responseValue.originalName] = result;
			} else {
				const folderPath = path.join(__dirname, "..", "Sources", "Lemmy-Swift-Client", "Lemmy API", isRequest ? "Requests" : type);
				await fs.mkdir(folderPath, { recursive: true });
				const newFilePath = path.join(folderPath, fileName.replace(".ts", ".swift"));
				await fs.writeFile(newFilePath, result.trim() + "\n");
			}
		}
	}

	for (const [name, response] of Object.entries(pendingResponses)) {
		const newFilePath = path.join(__dirname, "..", "Sources", "Lemmy-Swift-Client", "Lemmy API", "Requests", name + ".swift");
		await fs.appendFile(newFilePath, "\n" + response.trim() + "\n");
	}
})();

function lowercaseFirstLetter(str) {
	return str.charAt(0).toLowerCase() + str.slice(1);
}

function tsToSwiftType(tsType) {
	const comment = /(\/\*.*\*\/)/gmu.exec(tsType)?.[1];
	if (comment) {
		tsType = tsType.replace(comment, "").trim();
	}

	switch (tsType) {
		case "string":
			return "String";
		case "number":
			return "Int";
		case "boolean":
			return "Bool";
	}

	const regexArrayResult = /Array<(.*)>/gu.exec(tsType);
	if (regexArrayResult) {
		return `[${tsToSwiftType(regexArrayResult[1]) ?? regexArrayResult[1]}]`;
	}
}
