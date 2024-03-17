import Foundation

public struct SiteAggregates: Codable, Hashable {
	public let site_id: SiteId?
	public let users: Int?
	public let posts: Int?
	public let comments: Int?
	public let communities: Int?
	public let users_active_day: Int?
	public let users_active_week: Int?
	public let users_active_month: Int?
	public let users_active_half_year: Int?

	public init(
		site_id: SiteId? = nil,
		users: Int? = nil,
		posts: Int? = nil,
		comments: Int? = nil,
		communities: Int? = nil,
		users_active_day: Int? = nil,
		users_active_week: Int? = nil,
		users_active_month: Int? = nil,
		users_active_half_year: Int? = nil
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
