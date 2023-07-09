import Foundation

public struct GetUnreadRegistrationApplicationCount: Codable, Hashable {
	public let auth: String

	public init(
		auth: String
	) {
		self.auth = auth
	}
}
