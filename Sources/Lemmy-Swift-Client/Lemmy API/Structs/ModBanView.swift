import Foundation

public struct ModBanView: Codable {
	public let banned_person: PersonSafe
	public let mod_ban: ModBan
	public let moderator: PersonSafe?

	public init(banned_person: PersonSafe, mod_ban: ModBan, moderator: PersonSafe? = nil) {
		self.banned_person = banned_person
		self.mod_ban = mod_ban
		self.moderator = moderator
	}
}
