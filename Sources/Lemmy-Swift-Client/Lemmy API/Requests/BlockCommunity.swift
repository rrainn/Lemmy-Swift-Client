import Foundation

public struct BlockCommunityRequest: APIRequest {
	public typealias Response = BlockCommunityResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/community/block"

	public let auth: String
	public let block: Bool
	public let community_id: Int

	public init(auth: String, block: Bool, community_id: Int) {
		self.auth = auth
		self.block = block
		self.community_id = community_id
	}
}

public struct BlockCommunityResponse: APIResponse {
	public let blocked: Bool
	public let community_view: CommunityView

	public init(blocked: Bool, community_view: CommunityView) {
		self.blocked = blocked
		self.community_view = community_view
	}
}
