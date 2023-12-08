import Foundation

public struct PurgeCommunityRequest: APIRequest {
	public typealias Response = SuccessResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/admin/purge/community"

	public let communityId: CommunityId
	public let reason: String?

	public init(
		communityId: CommunityId,
		reason: String? = nil
	) {
		self.communityId = communityId
		self.reason = reason
	}
}
