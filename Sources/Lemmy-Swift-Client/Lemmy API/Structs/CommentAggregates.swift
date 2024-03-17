import Foundation

public struct CommentAggregates: Codable, Hashable {
	public let comment_id: CommentId?
	public let score: Int?
	public let upvotes: Int?
	public let downvotes: Int?
	public let published: String?
	public let child_count: Int?

	public init(
		comment_id: CommentId? = nil,
		score: Int? = nil,
		upvotes: Int? = nil,
		downvotes: Int? = nil,
		published: String? = nil,
		child_count: Int? = nil
	) {
		self.comment_id = comment_id
		self.score = score
		self.upvotes = upvotes
		self.downvotes = downvotes
		self.published = published
		self.child_count = child_count
	}
}
