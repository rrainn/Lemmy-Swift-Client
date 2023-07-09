import Foundation

public struct DeleteCommunityRequest: APIRequest {
	public typealias Response = CommunityResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/community/delete"

	public let community_id: CommunityId
	public let deleted: Bool
	public let auth: String

	public init(
		community_id: CommunityId,
		deleted: Bool,
		auth: String
	) {
		self.community_id = community_id
		self.deleted = deleted
		self.auth = auth
	}
}
