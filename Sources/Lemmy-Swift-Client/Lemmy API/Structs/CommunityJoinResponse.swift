import Foundation

public struct CommunityJoinResponse: Codable, Hashable {
	public let joined: Bool

	public init(
		joined: Bool
	) {
		self.joined = joined
	}
}
