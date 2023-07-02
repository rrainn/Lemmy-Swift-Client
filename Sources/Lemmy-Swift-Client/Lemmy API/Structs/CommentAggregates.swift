import Foundation

public struct CommentAggregates: Codable {
	public let child_count: Int
	public let comment_id: Int
	public let downvotes: Int
	public let id: Int
	public let score: Int
	public let upvotes: Int

	public init(child_count: Int, comment_id: Int, downvotes: Int, id: Int, score: Int, upvotes: Int) {
		self.child_count = child_count
		self.comment_id = comment_id
		self.downvotes = downvotes
		self.id = id
		self.score = score
		self.upvotes = upvotes
	}
}
