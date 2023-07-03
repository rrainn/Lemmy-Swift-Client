import Foundation

public struct ModBanView: Codable {
	public let banned_person: Person
	public let mod_ban: ModBan
	public let moderator: Person?

	public init(banned_person: Person, mod_ban: ModBan, moderator: Person? = nil) {
		self.banned_person = banned_person
		self.mod_ban = mod_ban
		self.moderator = moderator
	}
}
