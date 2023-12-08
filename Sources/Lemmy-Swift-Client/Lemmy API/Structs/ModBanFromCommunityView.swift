import Foundation

public struct ModBanFromCommunityView: Codable, Hashable {
	public let modBanFromCommunity: ModBanFromCommunity
	public let moderator: Person?
	public let community: Community
	public let bannedPerson: Person

	public init(
		modBanFromCommunity: ModBanFromCommunity,
		moderator: Person? = nil,
		community: Community,
		bannedPerson: Person
	) {
		self.modBanFromCommunity = modBanFromCommunity
		self.moderator = moderator
		self.community = community
		self.bannedPerson = bannedPerson
	}
}
