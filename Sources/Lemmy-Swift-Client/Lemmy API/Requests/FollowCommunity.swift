import Foundation

public struct FollowCommunityRequest: APIRequest {
	public typealias Response = CommunityResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/community/follow"

	public let communityId: CommunityId
	public let follow: Bool

	public init(
		communityId: CommunityId,
		follow: Bool
	) {
		self.communityId = communityId
		self.follow = follow
	}
}
