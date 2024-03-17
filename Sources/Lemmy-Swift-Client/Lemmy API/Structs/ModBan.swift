import Foundation

public struct ModBan: Codable, Identifiable, Hashable {
	public let id: Int?
	public let mod_person_id: PersonId?
	public let other_person_id: PersonId?
	public let reason: String?
	public let banned: Bool?
	public let expires: String?
	public let when_: String?

	public init(
		id: Int? = nil,
		mod_person_id: PersonId? = nil,
		other_person_id: PersonId? = nil,
		reason: String? = nil,
		banned: Bool? = nil,
		expires: String? = nil,
		when_: String? = nil
	) {
		self.id = id
		self.mod_person_id = mod_person_id
		self.other_person_id = other_person_id
		self.reason = reason
		self.banned = banned
		self.expires = expires
		self.when_ = when_
	}
}
