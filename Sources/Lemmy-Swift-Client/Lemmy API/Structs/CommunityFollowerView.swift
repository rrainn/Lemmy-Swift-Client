import Foundation

public struct CommunityFollowerView: Codable, Hashable {
	public let community: Community?
	public let follower: Person?

	public init(
		community: Community? = nil,
		follower: Person? = nil
	) {
		self.community = community
		self.follower = follower
	}
}
