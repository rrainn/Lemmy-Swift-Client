import Foundation

public typealias SessionResponse = (Data, URLResponse)

public protocol Session {
	func data(for request: URLRequest) async throws -> SessionResponse
}
