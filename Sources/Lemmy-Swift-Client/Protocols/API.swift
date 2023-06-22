import Foundation

public protocol APIRequest: Codable {
	static var httpMethod: HTTPMethod { get }
	static var path: String { get }

	associatedtype Response: APIResponse
}

public protocol APIResponse: Codable {}
