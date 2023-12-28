import Foundation

public struct SiteAggregates: Codable, Hashable {
	public let siteId: SiteId
	public let users: Int
	public let posts: Int
	public let comments: Int
	public let communities: Int
	public let usersActiveDay: Int
	public let usersActiveWeek: Int
	public let usersActiveMonth: Int
	public let usersActiveHalfYear: Int

	public init(
		siteId: SiteId,
		users: Int,
		posts: Int,
		comments: Int,
		communities: Int,
		usersActiveDay: Int,
		usersActiveWeek: Int,
		usersActiveMonth: Int,
		usersActiveHalfYear: Int
	) {
		self.siteId = siteId
		self.users = users
		self.posts = posts
		self.comments = comments
		self.communities = communities
		self.usersActiveDay = usersActiveDay
		self.usersActiveWeek = usersActiveWeek
		self.usersActiveMonth = usersActiveMonth
		self.usersActiveHalfYear = usersActiveHalfYear
	}
}
