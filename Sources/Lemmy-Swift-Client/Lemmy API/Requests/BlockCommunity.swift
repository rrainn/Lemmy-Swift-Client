import Foundation

public struct BlockCommunityRequest: APIRequest {
	public typealias Response = BlockCommunityResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/community/block"

	public let community_id: CommunityId
	public let block: Bool
	public let auth: String

	public init(
		community_id: CommunityId,
		block: Bool,
		auth: String
	) {
		self.community_id = community_id
		self.block = block
		self.auth = auth
	}
}

public struct BlockCommunityResponse: APIResponse {
	public let community_view: CommunityView
	public let blocked: Bool

	public init(
		community_view: CommunityView,
		blocked: Bool
	) {
		self.community_view = community_view
		self.blocked = blocked
	}
}
