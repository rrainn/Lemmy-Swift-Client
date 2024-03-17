import Foundation

public struct CommunityModeratorView: Codable, Hashable {
	public let community: Community?
	public let moderator: Person?

	public init(
		community: Community? = nil,
		moderator: Person? = nil
	) {
		self.community = community
		self.moderator = moderator
	}
}
