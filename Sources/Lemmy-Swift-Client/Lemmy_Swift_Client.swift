import Combine
import Foundation

public enum LemmyAPIError: Error, CustomStringConvertible, LocalizedError {
	case badResponse(response: URLResponse, request: URLRequest, data: Data)
	case invalidResponse(response: HTTPURLResponse, request: URLRequest, data: Data)
	case decodeError(_ error: Error, data: Data, request: URLRequest)

	public var description: String {
		switch self {
		case .badResponse(response: _, request: _, data: _):
			return "Bad response from server"
		case .invalidResponse(response: let response, request: _, data: _):
			return "Invalid response from server, status code \(response.statusCode)"
		case .decodeError(let error, data: _, request: _):
			return "Decode error, \(error.localizedDescription) (\(error))"
		}
	}

	public var errorDescription: String? { return description }
}

/// An instance of the Lemmy API.
public class LemmyAPI {
	public let baseUrl: URL
	private let headers: [String: String]?
	private let urlSession: URLSession

	public init(baseUrl: URL, headers: [String: String]? = nil, urlSession: URLSession = .shared) {
		self.baseUrl = baseUrl
		self.headers = headers
		self.urlSession = urlSession
	}

	public func urlRequest<T: APIRequest>(_ apiRequest: T) throws -> URLRequest {
		var request = URLRequest(url: baseUrl.appending(path: T.path))
		request.httpMethod = T.httpMethod.rawValue
		let encoder = JSONEncoder()
		if T.httpMethod == .get {
			let mirror = Mirror(reflecting: apiRequest)
			request.url = request.url?
				.appending(queryItems: mirror.children.compactMap { label, value in
					guard let label = label?.snakeCased(),
					      let valueString = value as? CustomStringConvertible else { return nil }

					return URLQueryItem(name: label, value: String(describing: valueString))
				})
		} else {
			request.httpBody = try encoder.encode(apiRequest)
		}
		request.setValue("application/json", forHTTPHeaderField: "Content-Type")
		return request
	}

	/// Do request to lemmy server and return URLSession result
	public func baseRequest<T: APIRequest>(_ apiRequest: T) async throws
		-> (T.Response, URLResponse, Data)
	{
		// Make Request
		let request = try urlRequest(apiRequest)
		let (data, response) = try await urlSession.data(for: request)
		if let urlResponse = response as? HTTPURLResponse,
		   urlResponse.statusCode != 200
		{
			throw LemmyAPIError.badResponse(
				response: urlResponse,
				request: request,
				data: data
			)
		}

		// Decode Response
		let decoder = JSONDecoder()
		decoder.keyDecodingStrategy = .convertFromSnakeCase

		do {
			let decodedResult = try decoder.decode(T.Response.self, from: data)
			return (decodedResult, response, data)
		} catch {
			throw LemmyAPIError.decodeError(error, data: data, request: request)
		}
	}

	public func request<T: APIRequest>(_ apiRequest: T) async throws -> T.Response {
		let (result, _, _) = try await baseRequest(apiRequest)
		return result
	}

	public func requestPublisher<T: APIRequest>(_ apiRequest: T)
		-> AnyPublisher<T.Response, Error>
	{
		guard let request = try? urlRequest(apiRequest)
		else {
			return Fail(error: NSError(domain: "Could not complete the request", code: 400))
				.eraseToAnyPublisher()
		}

		let decoder = JSONDecoder()
		decoder.keyDecodingStrategy = .convertFromSnakeCase

		return URLSession
			.shared
			.dataTaskPublisher(for: request)
			.tryMap { element -> Data in
				guard let httpResponse = element.response as? HTTPURLResponse,
				      httpResponse.statusCode == 200
				else {
					throw URLError(.badServerResponse)
				}
				return element.data
			}
			.decode(type: T.Response.self, decoder: decoder)
			.eraseToAnyPublisher()
	}
}

public enum HTTPMethod: String {
	case get = "GET"
	case post = "POST"
	case put = "PUT"
}

extension String {
	func snakeCased() -> String? {
		let pattern = "([a-z0-9])([A-Z])"

		let regex = try? NSRegularExpression(pattern: pattern, options: [])
		let range = NSRange(location: 0, length: count)
		return regex?.stringByReplacingMatches(
			in: self,
			options: [],
			range: range,
			withTemplate: "$1_$2"
		).lowercased()
	}
}
