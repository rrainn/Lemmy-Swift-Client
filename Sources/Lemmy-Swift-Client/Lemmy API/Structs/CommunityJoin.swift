import Foundation

public struct CommunityJoin: Codable, Hashable {
	public let community_id: CommunityId

	public init(
		community_id: CommunityId
	) {
		self.community_id = community_id
	}
}
