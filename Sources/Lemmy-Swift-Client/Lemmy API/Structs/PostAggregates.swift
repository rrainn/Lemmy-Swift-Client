import Foundation

public struct PostAggregates: Codable, Hashable {
	public let postId: PostId
	public let comments: Int
	public let score: Int
	public let upvotes: Int
	public let downvotes: Int
	public let published: String

	public init(
		postId: PostId,
		comments: Int,
		score: Int,
		upvotes: Int,
		downvotes: Int,
		published: String
	) {
		self.postId = postId
		self.comments = comments
		self.score = score
		self.upvotes = upvotes
		self.downvotes = downvotes
		self.published = published
	}
}
