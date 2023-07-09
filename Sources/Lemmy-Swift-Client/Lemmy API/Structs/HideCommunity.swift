import Foundation

public struct HideCommunity: Codable, Hashable {
	public let community_id: CommunityId
	public let hidden: Bool
	public let reason: String?
	public let auth: String

	public init(
		community_id: CommunityId,
		hidden: Bool,
		reason: String? = nil,
		auth: String
	) {
		self.community_id = community_id
		self.hidden = hidden
		self.reason = reason
		self.auth = auth
	}
}
