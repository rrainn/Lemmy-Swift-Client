import Foundation

public struct ModTransferCommunityView: Codable, Hashable {
	public let modTransferCommunity: ModTransferCommunity
	public let moderator: Person?
	public let community: Community
	public let moddedPerson: Person

	public init(
		modTransferCommunity: ModTransferCommunity,
		moderator: Person? = nil,
		community: Community,
		moddedPerson: Person
	) {
		self.modTransferCommunity = modTransferCommunity
		self.moderator = moderator
		self.community = community
		self.moddedPerson = moddedPerson
	}
}
