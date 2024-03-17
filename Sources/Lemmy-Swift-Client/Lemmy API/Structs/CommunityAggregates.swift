import Foundation

public struct CommunityAggregates: Codable, Hashable {
	public let community_id: CommunityId?
	public let subscribers: Int?
	public let posts: Int?
	public let comments: Int?
	public let published: String?
	public let users_active_day: Int?
	public let users_active_week: Int?
	public let users_active_month: Int?
	public let users_active_half_year: Int?

	public init(
		community_id: CommunityId? = nil,
		subscribers: Int? = nil,
		posts: Int? = nil,
		comments: Int? = nil,
		published: String? = nil,
		users_active_day: Int? = nil,
		users_active_week: Int? = nil,
		users_active_month: Int? = nil,
		users_active_half_year: Int? = nil
	) {
		self.community_id = community_id
		self.subscribers = subscribers
		self.posts = posts
		self.comments = comments
		self.published = published
		self.users_active_day = users_active_day
		self.users_active_week = users_active_week
		self.users_active_month = users_active_month
		self.users_active_half_year = users_active_half_year
	}
}
