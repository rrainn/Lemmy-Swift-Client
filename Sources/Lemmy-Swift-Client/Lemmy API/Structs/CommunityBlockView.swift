import Foundation

public struct CommunityBlockView: Codable, Hashable {
	public let person: Person
	public let community: Community

	public init(
		person: Person,
		community: Community
	) {
		self.person = person
		self.community = community
	}
}
