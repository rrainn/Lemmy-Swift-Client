import Foundation

public struct GetUnreadCount: Codable, Hashable {
	public let auth: String

	public init(
		auth: String
	) {
		self.auth = auth
	}
}
