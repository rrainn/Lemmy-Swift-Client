import Foundation

public struct PurgeCommunityRequest: APIRequest {
	public typealias Response = PurgeItemResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/admin/purge/community"

	public let community_id: CommunityId
	public let reason: String?
	public let auth: String

	public init(
		community_id: CommunityId,
		reason: String? = nil,
		auth: String
	) {
		self.community_id = community_id
		self.reason = reason
		self.auth = auth
	}
}
