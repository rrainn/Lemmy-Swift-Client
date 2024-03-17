import Foundation

public struct BanFromCommunityRequest: APIRequest {
	public typealias Response = BanFromCommunityResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/community/ban_user"

	public let community_id: CommunityId
	public let person_id: PersonId
	public let ban: Bool
	public let remove_data: Bool?
	public let reason: String?
	public let expires: Int?

	public init(
		community_id: CommunityId,
		person_id: PersonId,
		ban: Bool,
		remove_data: Bool? = nil,
		reason: String? = nil,
		expires: Int? = nil
	) {
		self.community_id = community_id
		self.person_id = person_id
		self.ban = ban
		self.remove_data = remove_data
		self.reason = reason
		self.expires = expires
	}
}

public struct BanFromCommunityResponse: APIResponse {
	public let person_view: PersonView
	public let banned: Bool

	public init(
		person_view: PersonView,
		banned: Bool
	) {
		self.person_view = person_view
		self.banned = banned
	}
}
