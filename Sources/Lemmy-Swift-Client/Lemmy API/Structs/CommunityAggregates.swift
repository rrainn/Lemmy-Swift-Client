import Foundation

public struct CommunityAggregates: Codable {
	public let comments: Int
	public let community_id: Int
	public let id: Int
	public let posts: Int
	public let subscribers: Int
	public let users_active_day: Int
	public let users_active_half_year: Int
	public let users_active_month: Int
	public let users_active_week: Int
	public let published: Date
	public let hot_rank: Int

	public init(
		comments: Int,
		community_id: Int,
		id: Int,
		posts: Int,
		subscribers: Int,
		users_active_day: Int,
		users_active_half_year: Int,
		users_active_month: Int,
		users_active_week: Int,
		published: Date,
		hot_rank: Int
	) {
		self.comments = comments
		self.community_id = community_id
		self.id = id
		self.posts = posts
		self.subscribers = subscribers
		self.users_active_day = users_active_day
		self.users_active_half_year = users_active_half_year
		self.users_active_month = users_active_month
		self.users_active_week = users_active_week
		self.published = published
		self.hot_rank = hot_rank
	}
}
