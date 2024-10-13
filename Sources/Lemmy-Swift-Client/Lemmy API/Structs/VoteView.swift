import Foundation

public struct VoteView: Codable, Hashable {
	public let creator: Person?
	public let creator_banned_from_community: Bool?
	public let score: Int?

	public init(
		creator: Person? = nil,
		creator_banned_from_community: Bool? = nil,
		score: Int? = nil
	) {
		self.creator = creator
		self.creator_banned_from_community = creator_banned_from_community
		self.score = score
	}
}
