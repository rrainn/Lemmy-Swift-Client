import Foundation

public struct CommunityFolowerView: Codable, Hashable {
	public let community: CommunitySafe
	public let follower: Person

	public init(community: CommunitySafe, follower: Person) {
		self.community = community
		self.follower = follower
	}
}
