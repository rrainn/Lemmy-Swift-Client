import Foundation

public struct ModBanFromCommunity: Codable, Identifiable, Hashable {
	public let id: Int
	public let mod_person_id: PersonId
	public let other_person_id: PersonId
	public let community_id: CommunityId
	public let reason: String?
	public let banned: Bool
	public let expires: String?
	public let when_: String

	public init(
		id: Int,
		mod_person_id: PersonId,
		other_person_id: PersonId,
		community_id: CommunityId,
		reason: String? = nil,
		banned: Bool,
		expires: String? = nil,
		when_: String
	) {
		self.id = id
		self.mod_person_id = mod_person_id
		self.other_person_id = other_person_id
		self.community_id = community_id
		self.reason = reason
		self.banned = banned
		self.expires = expires
		self.when_ = when_
	}
}
