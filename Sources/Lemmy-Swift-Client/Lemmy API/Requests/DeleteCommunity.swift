import Foundation

public struct DeleteCommunityRequest: APIRequest {
	public typealias Response = CommunityResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/community/delete"

	public let communityId: CommunityId
	public let deleted: Bool

	public init(
		communityId: CommunityId,
		deleted: Bool
	) {
		self.communityId = communityId
		self.deleted = deleted
	}
}
