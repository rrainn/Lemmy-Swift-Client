import Foundation

public struct ModBanView: Codable, Hashable {
	public let modBan: ModBan
	public let moderator: Person?
	public let bannedPerson: Person

	public init(
		modBan: ModBan,
		moderator: Person? = nil,
		bannedPerson: Person
	) {
		self.modBan = modBan
		self.moderator = moderator
		self.bannedPerson = bannedPerson
	}
}
