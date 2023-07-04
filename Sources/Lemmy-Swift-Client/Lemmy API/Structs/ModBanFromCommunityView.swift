import Foundation

public struct ModBanFromCommunityView: Codable, Hashable {
	public let banned_person: Person
	public let community: CommunitySafe
	public let mod_ban_from_community: ModBanFromCommunity
	public let moderator: Person?

	public init(
		banned_person: Person,
		community: CommunitySafe,
		mod_ban_from_community: ModBanFromCommunity,
		moderator: Person? = nil
	) {
		self.banned_person = banned_person
		self.community = community
		self.mod_ban_from_community = mod_ban_from_community
		self.moderator = moderator
	}
}
