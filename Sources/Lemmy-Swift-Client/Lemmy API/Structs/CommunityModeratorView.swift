import Foundation

public struct CommunityModeratorView: Codable {
	public let community: CommunitySafe
	public let moderator: PersonSafe

	public init(community: CommunitySafe, moderator: PersonSafe) {
		self.community = community
		self.moderator = moderator
	}
}
