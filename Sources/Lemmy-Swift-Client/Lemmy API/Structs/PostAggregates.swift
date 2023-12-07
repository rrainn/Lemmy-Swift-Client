import Foundation

public struct PostAggregates: Codable, Identifiable, Hashable {
	public let post_id: PostId
	public let comments: Int
	public let score: Int
	public let upvotes: Int
	public let downvotes: Int
	public let published: String
	public let newest_comment_time_necro: String
	public let newest_comment_time: String
	public let featured_community: Bool
	public let featured_local: Bool
	public let hot_rank: Int
	public let hot_rank_active: Int

	public init(
		post_id: PostId,
		comments: Int,
		score: Int,
		upvotes: Int,
		downvotes: Int,
		published: String,
		newest_comment_time_necro: String,
		newest_comment_time: String,
		featured_community: Bool,
		featured_local: Bool,
		hot_rank: Int,
		hot_rank_active: Int
	) {
		self.post_id = post_id
		self.comments = comments
		self.score = score
		self.upvotes = upvotes
		self.downvotes = downvotes
		self.published = published
		self.newest_comment_time_necro = newest_comment_time_necro
		self.newest_comment_time = newest_comment_time
		self.featured_community = featured_community
		self.featured_local = featured_local
		self.hot_rank = hot_rank
		self.hot_rank_active = hot_rank_active
	}
}
