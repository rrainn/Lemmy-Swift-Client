import Foundation

public struct ModAddCommunityView: Codable, Hashable {
	public let community: CommunitySafe
	public let mod_add_community: ModAddCommunity
	public let modded_person: Person
	public let moderator: Person

	public init(
		community: CommunitySafe,
		mod_add_community: ModAddCommunity,
		modded_person: Person,
		moderator: Person
	) {
		self.community = community
		self.mod_add_community = mod_add_community
		self.modded_person = modded_person
		self.moderator = moderator
	}
}
