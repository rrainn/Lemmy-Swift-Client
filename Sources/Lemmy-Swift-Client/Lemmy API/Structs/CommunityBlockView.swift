import Foundation

public struct CommunityBlockView: Codable, Hashable {
	public let person: Person?
	public let community: Community?

	public init(
		person: Person? = nil,
		community: Community? = nil
	) {
		self.person = person
		self.community = community
	}
}
