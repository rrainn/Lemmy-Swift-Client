import Foundation

public struct SiteAggregates: Codable, Identifiable, Hashable {
	public let comments: Int
	public let communities: Int
	public let id: Int
	public let posts: Int
	public let site_id: Int
	public let users: Int
	public let users_active_day: Int
	public let users_active_half_year: Int
	public let users_active_month: Int
	public let users_active_week: Int

	public init(
		comments: Int,
		communities: Int,
		id: Int,
		posts: Int,
		site_id: Int,
		users: Int,
		users_active_day: Int,
		users_active_half_year: Int,
		users_active_month: Int,
		users_active_week: Int
	) {
		self.comments = comments
		self.communities = communities
		self.id = id
		self.posts = posts
		self.site_id = site_id
		self.users = users
		self.users_active_day = users_active_day
		self.users_active_half_year = users_active_half_year
		self.users_active_month = users_active_month
		self.users_active_week = users_active_week
	}
}
