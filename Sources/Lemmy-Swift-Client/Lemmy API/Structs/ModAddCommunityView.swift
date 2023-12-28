import Foundation

public struct ModAddCommunityView: Codable, Hashable {
	public let modAddCommunity: ModAddCommunity
	public let moderator: Person?
	public let community: Community
	public let moddedPerson: Person

	public init(
		modAddCommunity: ModAddCommunity,
		moderator: Person? = nil,
		community: Community,
		moddedPerson: Person
	) {
		self.modAddCommunity = modAddCommunity
		self.moderator = moderator
		self.community = community
		self.moddedPerson = moddedPerson
	}
}
