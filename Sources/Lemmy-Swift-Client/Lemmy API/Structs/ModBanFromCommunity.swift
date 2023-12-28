import Foundation

public struct ModBanFromCommunity: Codable, Identifiable, Hashable {
	public let id: Int
	public let modPersonId: PersonId
	public let otherPersonId: PersonId
	public let communityId: CommunityId
	public let reason: String?
	public let banned: Bool
	public let expires: String?
	public let when: String

	public init(
		id: Int,
		modPersonId: PersonId,
		otherPersonId: PersonId,
		communityId: CommunityId,
		reason: String? = nil,
		banned: Bool,
		expires: String? = nil,
		when: String
	) {
		self.id = id
		self.modPersonId = modPersonId
		self.otherPersonId = otherPersonId
		self.communityId = communityId
		self.reason = reason
		self.banned = banned
		self.expires = expires
		self.when = when
	}
}
