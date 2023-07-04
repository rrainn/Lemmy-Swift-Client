import Foundation

public struct CommunityModeratorView: Codable, Hashable {
	public let community: CommunitySafe
	public let moderator: Person

	public init(community: CommunitySafe, moderator: Person) {
		self.community = community
		self.moderator = moderator
	}
}
