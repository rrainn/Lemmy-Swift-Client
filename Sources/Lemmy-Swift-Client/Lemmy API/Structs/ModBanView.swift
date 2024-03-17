import Foundation

public struct ModBanView: Codable, Hashable {
	public let mod_ban: ModBan?
	public let moderator: Person?
	public let banned_person: Person?

	public init(
		mod_ban: ModBan? = nil,
		moderator: Person? = nil,
		banned_person: Person? = nil
	) {
		self.mod_ban = mod_ban
		self.moderator = moderator
		self.banned_person = banned_person
	}
}
