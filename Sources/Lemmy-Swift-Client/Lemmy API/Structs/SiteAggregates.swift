import Foundation

public struct SiteAggregates: Codable, Hashable {
	public let site_id: SiteId
	public let users: Int
	public let posts: Int
	public let comments: Int
	public let communities: Int
	public let users_active_day: Int
	public let users_active_week: Int
	public let users_active_month: Int
	public let users_active_half_year: Int

	public init(
		site_id: SiteId,
		users: Int,
		posts: Int,
		comments: Int,
		communities: Int,
		users_active_day: Int,
		users_active_week: Int,
		users_active_month: Int,
		users_active_half_year: Int
	) {
		self.site_id = site_id
		self.users = users
		self.posts = posts
		self.comments = comments
		self.communities = communities
		self.users_active_day = users_active_day
		self.users_active_week = users_active_week
		self.users_active_month = users_active_month
		self.users_active_half_year = users_active_half_year
	}
}
