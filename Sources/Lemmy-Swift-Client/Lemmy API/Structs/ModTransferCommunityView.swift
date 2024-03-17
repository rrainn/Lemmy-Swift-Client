import Foundation

public struct ModTransferCommunityView: Codable, Hashable {
	public let mod_transfer_community: ModTransferCommunity?
	public let moderator: Person?
	public let community: Community?
	public let modded_person: Person?

	public init(
		mod_transfer_community: ModTransferCommunity? = nil,
		moderator: Person? = nil,
		community: Community? = nil,
		modded_person: Person? = nil
	) {
		self.mod_transfer_community = mod_transfer_community
		self.moderator = moderator
		self.community = community
		self.modded_person = modded_person
	}
}
