import Foundation

public struct ModAddCommunityView: Codable {
	public let community: CommunitySafe
	public let mod_add_community: ModAddCommunity
	public let modded_person: PersonSafe
	public let moderator: PersonSafe

	public init(
		community: CommunitySafe,
		mod_add_community: ModAddCommunity,
		modded_person: PersonSafe,
		moderator: PersonSafe
	) {
		self.community = community
		self.mod_add_community = mod_add_community
		self.modded_person = modded_person
		self.moderator = moderator
	}
}
