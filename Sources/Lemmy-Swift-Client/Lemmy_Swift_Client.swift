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
	
	/// Method to get a ``URLRequest`` for a given Lemmy API request.
	/// - Parameters:
	///   - apiRequest: The API request object you want to run.
	///   - auth: The JWT token for your auth command.
	/// - Returns: ``URLRequest`` that you can run.
	public func urlRequest<T: APIRequest>(_ apiRequest: T, auth: String? = nil) throws -> URLRequest {
		var request = URLRequest(url: baseUrl.appending(path: T.path))
		request.httpMethod = T.httpMethod.rawValue
		let encoder = JSONEncoder()
		if T.httpMethod == .get {
			let mirror = Mirror(reflecting: apiRequest)
			request.url = request.url?
				.appending(queryItems: mirror.children.compactMap { label, value in
					guard let label,
					      let valueString = value as? CustomStringConvertible else { return nil }

					return URLQueryItem(name: label, value: String(describing: valueString))
				})
		} else {
			request.httpBody = try encoder.encode(apiRequest)
		}
		request.setValue("application/json", forHTTPHeaderField: "Content-Type")
		if let auth {
			request.setValue("Bearer \(auth)", forHTTPHeaderField: "Authorization")
		}
		return request
	}

	/// Do request to lemmy server and return URLSession result
	/// - Parameters:
	///   - apiRequest: The API request object you want to run.
	///   - auth: The JWT token for your auth command.
	/// - Returns: A tuple of the response, ``URLResponse`` & ``Data``
	public func baseRequest<T: APIRequest>(_ apiRequest: T, auth: String? = nil) async throws
		-> (T.Response, URLResponse, Data)
	{
		// Make Request
		let request = try urlRequest(apiRequest, auth: auth)
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
		do {
			let decodedResult = try decoder.decode(T.Response.self, from: data)
			return (decodedResult, response, data)
		} catch {
			throw LemmyAPIError.decodeError(error, data: data, request: request)
		}
	}
	
	/// Method to get a type safe Lemmy response for the given request.
	/// - Parameters:
	///   - apiRequest: The API request object you want to run.
	///   - auth: The JWT token for your auth command.
	/// - Returns: The Lemmy API response.
	public func request<T: APIRequest>(_ apiRequest: T, auth: String? = nil) async throws -> T.Response {
		let (result, _, _) = try await baseRequest(apiRequest, auth: auth)
		return result
	}
}

public enum HTTPMethod: String {
	case get = "GET"
	case post = "POST"
	case put = "PUT"
}
