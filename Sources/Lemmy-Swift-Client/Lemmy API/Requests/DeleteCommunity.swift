import Foundation

public struct DeleteCommunityRequest: APIRequest {
	public typealias Response = CommunityResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/community/delete"

	public let community_id: CommunityId?
	public let deleted: Bool?

	public init(
		community_id: CommunityId? = nil,
		deleted: Bool? = nil
	) {
		self.community_id = community_id
		self.deleted = deleted
	}
}
