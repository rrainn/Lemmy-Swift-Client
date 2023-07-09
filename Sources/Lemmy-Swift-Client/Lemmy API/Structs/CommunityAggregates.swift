import Foundation

public struct CommunityAggregates: Codable, Identifiable, Hashable {
	public let id: Int
	public let community_id: CommunityId
	public let subscribers: Int
	public let posts: Int
	public let comments: Int
	public let published: String
	public let users_active_day: Int
	public let users_active_week: Int
	public let users_active_month: Int
	public let users_active_half_year: Int
	public let hot_rank: Int

	public init(
		id: Int,
		community_id: CommunityId,
		subscribers: Int,
		posts: Int,
		comments: Int,
		published: String,
		users_active_day: Int,
		users_active_week: Int,
		users_active_month: Int,
		users_active_half_year: Int,
		hot_rank: Int
	) {
		self.id = id
		self.community_id = community_id
		self.subscribers = subscribers
		self.posts = posts
		self.comments = comments
		self.published = published
		self.users_active_day = users_active_day
		self.users_active_week = users_active_week
		self.users_active_month = users_active_month
		self.users_active_half_year = users_active_half_year
		self.hot_rank = hot_rank
	}
}
