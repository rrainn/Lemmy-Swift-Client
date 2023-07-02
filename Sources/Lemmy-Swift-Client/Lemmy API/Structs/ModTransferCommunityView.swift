import Foundation

public struct ModTransferCommunityView: Codable {
	public let community: CommunitySafe
	public let mod_transfer_community: ModTransferCommunity
	public let modded_person: PersonSafe
	public let moderator: PersonSafe?

	public init(
		community: CommunitySafe,
		mod_transfer_community: ModTransferCommunity,
		modded_person: PersonSafe,
		moderator: PersonSafe? = nil
	) {
		self.community = community
		self.mod_transfer_community = mod_transfer_community
		self.modded_person = modded_person
		self.moderator = moderator
	}
}
