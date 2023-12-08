import Foundation

public struct ModHideCommunityView: Codable, Hashable {
	public let modHideCommunity: ModHideCommunity
	public let admin: Person?
	public let community: Community

	public init(
		modHideCommunity: ModHideCommunity,
		admin: Person? = nil,
		community: Community
	) {
		self.modHideCommunity = modHideCommunity
		self.admin = admin
		self.community = community
	}
}
