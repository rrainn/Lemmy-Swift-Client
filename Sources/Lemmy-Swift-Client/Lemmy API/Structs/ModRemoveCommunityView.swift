import Foundation

public struct ModRemoveCommunityView: Codable, Hashable {
	public let modRemoveCommunity: ModRemoveCommunity
	public let moderator: Person?
	public let community: Community

	public init(
		modRemoveCommunity: ModRemoveCommunity,
		moderator: Person? = nil,
		community: Community
	) {
		self.modRemoveCommunity = modRemoveCommunity
		self.moderator = moderator
		self.community = community
	}
}
