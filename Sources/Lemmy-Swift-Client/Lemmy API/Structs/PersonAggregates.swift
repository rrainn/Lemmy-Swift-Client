import Foundation

public struct PersonAggregates: Codable {
	public let comment_count: Int
	public let comment_score: Int
	public let id: Int
	public let person_id: Int
	public let post_count: Int
	public let post_score: Int

	public init(
		comment_count: Int,
		comment_score: Int,
		id: Int,
		person_id: Int,
		post_count: Int,
		post_score: Int
	) {
		self.comment_count = comment_count
		self.comment_score = comment_score
		self.id = id
		self.person_id = person_id
		self.post_count = post_count
		self.post_score = post_score
	}
}
