import Foundation

public struct ModTransferCommunityView: Codable {
	public let community: CommunitySafe
	public let mod_transfer_community: ModTransferCommunity
	public let modded_person: Person
	public let moderator: Person?

	public init(
		community: CommunitySafe,
		mod_transfer_community: ModTransferCommunity,
		modded_person: Person,
		moderator: Person? = nil
	) {
		self.community = community
		self.mod_transfer_community = mod_transfer_community
		self.modded_person = modded_person
		self.moderator = moderator
	}
}
