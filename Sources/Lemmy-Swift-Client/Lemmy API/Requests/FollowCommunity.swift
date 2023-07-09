import Foundation

public struct FollowCommunityRequest: APIRequest {
	public typealias Response = CommunityResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/community/follow"

	public let community_id: CommunityId
	public let follow: Bool
	public let auth: String

	public init(
		community_id: CommunityId,
		follow: Bool,
		auth: String
	) {
		self.community_id = community_id
		self.follow = follow
		self.auth = auth
	}
}
