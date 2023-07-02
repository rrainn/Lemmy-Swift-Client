import Foundation

public struct ModBanFromCommunity: Codable {
	public let banned: Bool?
	public let community_id: Int
	public let expires: String?
	public let id: Int
	public let mod_person_id: Int
	public let other_person_id: Int
	public let reason: String?
	public let when_: String

	public init(
		banned: Bool? = nil,
		community_id: Int,
		expires: String? = nil,
		id: Int,
		mod_person_id: Int,
		other_person_id: Int,
		reason: String? = nil,
		when_: String
	) {
		self.banned = banned
		self.community_id = community_id
		self.expires = expires
		self.id = id
		self.mod_person_id = mod_person_id
		self.other_person_id = other_person_id
		self.reason = reason
		self.when_ = when_
	}
}
