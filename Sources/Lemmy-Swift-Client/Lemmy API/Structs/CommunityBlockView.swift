import Foundation

public struct CommunityBlockView: Codable, Hashable {
	public let community: CommunitySafe
	public let person: PersonSafe

	public init(community: CommunitySafe, person: PersonSafe) {
		self.community = community
		self.person = person
	}
}
