import Foundation

public struct UserJoinResponse: Codable, Hashable {
	public let joined: Bool

	public init(
		joined: Bool
	) {
		self.joined = joined
	}
}
