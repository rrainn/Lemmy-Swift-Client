import Foundation

public struct CommentAggregates: Codable, Hashable {
	public let commentId: CommentId
	public let score: Int
	public let upvotes: Int
	public let downvotes: Int
	public let published: String
	public let childCount: Int

	public init(
		commentId: CommentId,
		score: Int,
		upvotes: Int,
		downvotes: Int,
		published: String,
		childCount: Int
	) {
		self.commentId = commentId
		self.score = score
		self.upvotes = upvotes
		self.downvotes = downvotes
		self.published = published
		self.childCount = childCount
	}
}
