import Foundation

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
					guard let label,
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
		let request = try urlRequest(apiRequest)
		let (data, response) = try await URLSession.shared.data(for: request)
		let decoder = JSONDecoder()
		let decodedResult = try decoder.decode(T.Response.self, from: data)
		return (decodedResult, response, data)
	}

	public func request<T: APIRequest>(_ apiRequest: T) async throws -> T.Response {
		let (result, _, _) = try await baseRequest(apiRequest)
		return result
	}
}

public enum HTTPMethod: String {
	case get = "GET"
	case post = "POST"
	case put = "PUT"
}
