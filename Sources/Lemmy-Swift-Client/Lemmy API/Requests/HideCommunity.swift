import Foundation

public struct HideCommunityRequest: APIRequest {
	public typealias Response = SuccessResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/community/hide"

	public let community_id: CommunityId?
	public let hidden: Bool?
	public let reason: String?

	public init(
		community_id: CommunityId? = nil,
		hidden: Bool? = nil,
		reason: String? = nil
	) {
		self.community_id = community_id
		self.hidden = hidden
		self.reason = reason
	}
}
