import Foundation

public struct CommunityBlockView: Codable, Hashable {
	public let community: CommunitySafe
	public let person: Person

	public init(community: CommunitySafe, person: Person) {
		self.community = community
		self.person = person
	}
}
