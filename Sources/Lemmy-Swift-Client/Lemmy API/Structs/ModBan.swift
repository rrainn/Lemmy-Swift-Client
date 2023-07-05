import Foundation

public struct ModBan: Codable, Identifiable, Hashable {
	public let banned: Bool
	public let expires: String
	public let id: Int
	public let mod_person_id: Int
	public let other_person_id: Int
	public let reason: String?
	public let when_: String

	public init(
		banned: Bool,
		expires: String,
		id: Int,
		mod_person_id: Int,
		other_person_id: Int,
		reason: String? = nil,
		when_: String
	) {
		self.banned = banned
		self.expires = expires
		self.id = id
		self.mod_person_id = mod_person_id
		self.other_person_id = other_person_id
		self.reason = reason
		self.when_ = when_
	}
}
