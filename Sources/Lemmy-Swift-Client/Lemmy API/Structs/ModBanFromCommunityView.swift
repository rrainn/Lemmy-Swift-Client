import Foundation

public struct ModBanFromCommunityView: Codable, Hashable {
	public let mod_ban_from_community: ModBanFromCommunity?
	public let moderator: Person?
	public let community: Community?
	public let banned_person: Person?

	public init(
		mod_ban_from_community: ModBanFromCommunity? = nil,
		moderator: Person? = nil,
		community: Community? = nil,
		banned_person: Person? = nil
	) {
		self.mod_ban_from_community = mod_ban_from_community
		self.moderator = moderator
		self.community = community
		self.banned_person = banned_person
	}
}
