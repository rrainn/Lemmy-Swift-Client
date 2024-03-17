import Foundation

public struct PurgeCommunityRequest: APIRequest {
	public typealias Response = SuccessResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/admin/purge/community"

	public let community_id: CommunityId?
	public let reason: String?

	public init(
		community_id: CommunityId? = nil,
		reason: String? = nil
	) {
		self.community_id = community_id
		self.reason = reason
	}
}
