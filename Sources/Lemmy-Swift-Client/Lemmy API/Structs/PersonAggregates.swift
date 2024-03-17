import Foundation

public struct PersonAggregates: Codable, Hashable {
	public let person_id: PersonId
	public let post_count: Int
	public let comment_count: Int

	public init(
		person_id: PersonId,
		post_count: Int,
		comment_count: Int
	) {
		self.person_id = person_id
		self.post_count = post_count
		self.comment_count = comment_count
	}
}
