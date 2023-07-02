import Foundation

public struct FollowCommunityRequest: APIRequest {
	public typealias Response = CommunityResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/community/follow"

	public let auth: String
	public let community_id: Int
	public let follow: Bool

	public init(auth: String, community_id: Int, follow: Bool) {
		self.auth = auth
		self.community_id = community_id
		self.follow = follow
	}
}
