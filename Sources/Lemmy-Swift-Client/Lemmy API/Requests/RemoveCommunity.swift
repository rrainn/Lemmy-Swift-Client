import Foundation

public struct RemoveCommunityRequest: APIRequest {
	public typealias Response = CommunityResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/community/remove"

	public let community_id: CommunityId
	public let removed: Bool
	public let reason: String?
	public let expires: Int?
	public let auth: String

	public init(
		community_id: CommunityId,
		removed: Bool,
		reason: String? = nil,
		expires: Int? = nil,
		auth: String
	) {
		self.community_id = community_id
		self.removed = removed
		self.reason = reason
		self.expires = expires
		self.auth = auth
	}
}
