import Foundation

public struct BlockCommunityRequest: APIRequest {
	public typealias Response = BlockCommunityResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/community/block"

	public let communityId: CommunityId
	public let block: Bool

	public init(
		communityId: CommunityId,
		block: Bool
	) {
		self.communityId = communityId
		self.block = block
	}
}

public struct BlockCommunityResponse: APIResponse {
	public let communityView: CommunityView
	public let blocked: Bool

	public init(
		communityView: CommunityView,
		blocked: Bool
	) {
		self.communityView = communityView
		self.blocked = blocked
	}
}
