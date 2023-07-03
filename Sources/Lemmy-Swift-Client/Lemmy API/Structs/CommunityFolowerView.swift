import Foundation

public struct CommunityFolowerView: Codable, Hashable {
	public let community: CommunitySafe
	public let follower: PersonSafe

	public init(community: CommunitySafe, follower: PersonSafe) {
		self.community = community
		self.follower = follower
	}
}
