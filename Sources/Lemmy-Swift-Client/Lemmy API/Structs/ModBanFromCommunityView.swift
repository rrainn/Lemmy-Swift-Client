import Foundation

public struct ModBanFromCommunityView: Codable {
	public let banned_person: PersonSafe
	public let community: CommunitySafe
	public let mod_ban_from_community: ModBanFromCommunity
	public let moderator: PersonSafe?

	public init(
		banned_person: PersonSafe,
		community: CommunitySafe,
		mod_ban_from_community: ModBanFromCommunity,
		moderator: PersonSafe? = nil
	) {
		self.banned_person = banned_person
		self.community = community
		self.mod_ban_from_community = mod_ban_from_community
		self.moderator = moderator
	}
}
