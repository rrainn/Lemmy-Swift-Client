import Foundation

public struct UserJoin: Codable, Hashable {
	public let auth: String

	public init(
		auth: String
	) {
		self.auth = auth
	}
}
