import Foundation

public struct RemoveCommunityRequest: APIRequest {
	public typealias Response = CommunityResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/community/remove"

	public let communityId: CommunityId
	public let removed: Bool
	public let reason: String?

	public init(
		communityId: CommunityId,
		removed: Bool,
		reason: String? = nil
	) {
		self.communityId = communityId
		self.removed = removed
		self.reason = reason
	}
}
