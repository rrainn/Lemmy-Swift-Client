import Foundation

public struct HideCommunityRequest: APIRequest {
	public typealias Response = SuccessResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/community/hide"

	public let communityId: CommunityId
	public let hidden: Bool
	public let reason: String?

	public init(
		communityId: CommunityId,
		hidden: Bool,
		reason: String? = nil
	) {
		self.communityId = communityId
		self.hidden = hidden
		self.reason = reason
	}
}
