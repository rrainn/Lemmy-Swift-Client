import Foundation

public struct ModJoin: Codable, Hashable {
	public let community_id: CommunityId

	public init(
		community_id: CommunityId
	) {
		self.community_id = community_id
	}
}
