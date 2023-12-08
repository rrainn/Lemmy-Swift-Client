import Foundation

public struct PersonAggregates: Codable, Hashable {
	public let personId: PersonId
	public let postCount: Int
	public let commentCount: Int

	public init(
		personId: PersonId,
		postCount: Int,
		commentCount: Int
	) {
		self.personId = personId
		self.postCount = postCount
		self.commentCount = commentCount
	}
}
