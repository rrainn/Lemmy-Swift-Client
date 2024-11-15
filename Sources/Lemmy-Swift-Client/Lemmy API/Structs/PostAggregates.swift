import Foundation

public struct PostAggregates: Codable, Hashable {
	public let post_id: PostId?
	public let comments: Int?
	public let score: Int?
	public let upvotes: Int?
	public let downvotes: Int?
	public let published: String?
	public let newest_comment_time: String?

	public init(
		post_id: PostId? = nil,
		comments: Int? = nil,
		score: Int? = nil,
		upvotes: Int? = nil,
		downvotes: Int? = nil,
		published: String? = nil,
		newest_comment_time: String? = nil
	) {
		self.post_id = post_id
		self.comments = comments
		self.score = score
		self.upvotes = upvotes
		self.downvotes = downvotes
		self.published = published
		self.newest_comment_time = newest_comment_time
	}
}
