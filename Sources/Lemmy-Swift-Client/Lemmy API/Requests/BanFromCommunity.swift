import Foundation

public struct BanFromCommunityRequest: APIRequest {
	public typealias Response = BanFromCommunityResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/community/ban_user"

	public let communityId: CommunityId
	public let personId: PersonId
	public let ban: Bool
	public let removeData: Bool?
	public let reason: String?
	public let expires: Int?

	public init(
		communityId: CommunityId,
		personId: PersonId,
		ban: Bool,
		removeData: Bool? = nil,
		reason: String? = nil,
		expires: Int? = nil
	) {
		self.communityId = communityId
		self.personId = personId
		self.ban = ban
		self.removeData = removeData
		self.reason = reason
		self.expires = expires
	}
}

public struct BanFromCommunityResponse: APIResponse {
	public let personView: PersonView
	public let banned: Bool

	public init(
		personView: PersonView,
		banned: Bool
	) {
		self.personView = personView
		self.banned = banned
	}
}
