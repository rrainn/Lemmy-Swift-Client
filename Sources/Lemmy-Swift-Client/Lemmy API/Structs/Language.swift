import Foundation

public struct Language: Codable, Identifiable, Hashable {
	public let code: String
	public let id: Int
	public let name: String

	public init(code: String, id: Int, name: String) {
		self.code = code
		self.id = id
		self.name = name
	}
}
