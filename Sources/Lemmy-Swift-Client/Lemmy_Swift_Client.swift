import Foundation

public enum LemmyAPIError: Error, CustomStringConvertible, LocalizedError {
    case badResponse(response: URLResponse, data: Data)
    case invalidResponse(response: HTTPURLResponse, data: Data)
    case decodeError(_ error: Error, data: Data, request: URLRequest)
    
    public var description: String {
        switch self {
        case .badResponse(response: _, data: _):
            return "Bad response from server"
        case .invalidResponse(response: let response, data: _):
            return "Invalid response from server, status code \(response.statusCode)"
        case .decodeError(let error, data: _, request: _):
            return "Decode error, \(error.localizedDescription) (\(error))"
        }
    }
    
    public var errorDescription: String? { return self.description }
}

/// An instance of the Lemmy API.
public class LemmyAPI {
	private let baseUrl: URL
	private let headers: [String: String]?

	public init(baseUrl: URL, headers: [String: String]? = nil) {
		self.baseUrl = baseUrl
		self.headers = headers
	}
    
    static let dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .custom { decoder in
        let container = try decoder.singleValueContainer()
        let dateString = try container.decode(String.self)
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [.withFullDate, .withTime, .withColonSeparatorInTime, .withDashSeparatorInDate, .withFractionalSeconds]
        if let date = formatter.date(from: dateString) { return date }
        formatter.formatOptions.remove(.withFractionalSeconds)
        if let date = formatter.date(from: dateString) { return date }
        throw DecodingError.dataCorruptedError(in: container, debugDescription: "Unable to decode date string \(dateString)")
    }
    
	public func request<T: APIRequest>(_ apiRequest: T) async throws -> T.Response {
		var request = URLRequest(url: baseUrl.appending(path: T.path))
		request.httpMethod = T.httpMethod.rawValue
		let encoder = JSONEncoder()
		if T.httpMethod == .get {
			let mirror = Mirror(reflecting: apiRequest)
			request.url = request.url?.appending(queryItems: mirror.children.compactMap { (label, value) in
				guard let label else { return nil }
                
                if let date = value as? Date {
                    let dateFormatter = ISO8601DateFormatter()
                    return URLQueryItem(name: label, value: dateFormatter.string(from: date))
                }
                
                if let valueString = value as? CustomStringConvertible {
                    return URLQueryItem(name: label, value: String(describing: valueString))
                }
                
                return nil
			})
		} else {
			request.httpBody = try encoder.encode(apiRequest)
		}
		request.setValue("application/json", forHTTPHeaderField: "Content-Type")
		let (data, response) = try await URLSession.shared.data(for: request)
        if let urlResponse = response as? HTTPURLResponse, urlResponse.statusCode != 200 { throw LemmyAPIError.badResponse(response: urlResponse, data: data) }
        
		let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = LemmyAPI.dateDecodingStrategy
        do {
            return try decoder.decode(T.Response.self, from: data)
        } catch {
            throw LemmyAPIError.decodeError(error, data: data, request: request)
        }
	}
}

public enum HTTPMethod: String {
	case get = "GET"
	case post = "POST"
	case put = "PUT"
}
