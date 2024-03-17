import Foundation

public struct ModRemoveCommunityView: Codable, Hashable {
	public let mod_remove_community: ModRemoveCommunity?
	public let moderator: Person?
	public let community: Community?

	public init(
		mod_remove_community: ModRemoveCommunity? = nil,
		moderator: Person? = nil,
		community: Community? = nil
	) {
		self.mod_remove_community = mod_remove_community
		self.moderator = moderator
		self.community = community
	}
}
