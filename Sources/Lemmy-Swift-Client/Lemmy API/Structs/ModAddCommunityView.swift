import Foundation

public struct ModAddCommunityView: Codable, Hashable {
	public let mod_add_community: ModAddCommunity?
	public let moderator: Person?
	public let community: Community?
	public let modded_person: Person?

	public init(
		mod_add_community: ModAddCommunity? = nil,
		moderator: Person? = nil,
		community: Community? = nil,
		modded_person: Person? = nil
	) {
		self.mod_add_community = mod_add_community
		self.moderator = moderator
		self.community = community
		self.modded_person = modded_person
	}
}
