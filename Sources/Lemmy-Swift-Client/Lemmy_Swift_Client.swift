import Foundation

/// An instance of the Lemmy API.
public class LemmyAPI {
	private let baseUrl: URL
	private let headers: [String: String]?
	private let urlSession: URLSession

	public init(baseUrl: URL, headers: [String: String]? = nil, urlSession: URLSession = .shared) {
		self.baseUrl = baseUrl
		self.headers = headers
		self.urlSession = urlSession
	}

	public func request<T: APIRequest>(_ apiRequest: T) async throws -> T.Response {
		var request = URLRequest(url: baseUrl.appending(path: T.path))
		request.httpMethod = T.httpMethod.rawValue
		let encoder = JSONEncoder()
		if T.httpMethod == .get {
			let mirror = Mirror(reflecting: apiRequest)
			request.url = request.url?.appending(queryItems: mirror.children.compactMap { (label, value) in
				guard let label, let valueString = value as? CustomStringConvertible else { return nil }

				return URLQueryItem(name: label, value: String(describing: valueString))
			})
		} else {
			request.httpBody = try encoder.encode(apiRequest)
		}
		request.setValue("application/json", forHTTPHeaderField: "Content-Type")
		let (data, _) = try await urlSession.data(for: request)
		let decoder = JSONDecoder()
		return try decoder.decode(T.Response.self, from: data)
	}
}

public enum HTTPMethod: String {
	case get = "GET"
	case post = "POST"
	case put = "PUT"
}
