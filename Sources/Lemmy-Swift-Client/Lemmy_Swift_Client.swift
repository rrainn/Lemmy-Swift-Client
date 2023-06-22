import Foundation

/// An instance of the Lemmy API.
public final class LemmyAPI {
	private let baseUrl: URL
	private let headers: [String: String]?

	let session: Session

	public init(baseUrl: URL, headers: [String: String]? = nil, session: Session = URLSession.shared) {
		self.baseUrl = baseUrl
		self.headers = headers
		self.session = session
	}

	public func request<T: APIRequest>(_ apiRequest: T) async throws -> T.Response {
		let urlRequest = try makeUrlRequest(for: apiRequest)
		let (data, _) = try await session.data(for: urlRequest)
		return try JSONDecoder().decode(T.Response.self, from: data)
	}
	
	func makeUrlRequest<T: APIRequest>(for apiRequest: T) throws -> URLRequest {
		var request = URLRequest(url: baseUrl.appending(path: T.path))
		request.httpMethod = T.httpMethod.rawValue

		if T.httpMethod == .get {
			let mirror = Mirror(reflecting: apiRequest)
			request.url = request.url?.appending(queryItems: mirror.children.compactMap { (label, value) in
				guard let label, let valueString = value as? CustomStringConvertible else { return nil }

				return URLQueryItem(name: label, value: String(describing: valueString))
			})
		} else {
			request.httpBody = try JSONEncoder().encode(apiRequest)
		}

		headers?.forEach { (header, value) in
			request.setValue(value, forHTTPHeaderField: header)
		}

		request.setValue("application/json", forHTTPHeaderField: "Content-Type")

		return request
	}
}

public enum HTTPMethod: String {
	case get = "GET"
	case post = "POST"
	case put = "PUT"
}
