import Foundation

public struct CommunityAggregates: Codable, Hashable {
	public let communityId: CommunityId
	public let subscribers: Int
	public let posts: Int
	public let comments: Int
	public let published: String
	public let usersActiveDay: Int
	public let usersActiveWeek: Int
	public let usersActiveMonth: Int
	public let usersActiveHalfYear: Int

	public init(
		communityId: CommunityId,
		subscribers: Int,
		posts: Int,
		comments: Int,
		published: String,
		usersActiveDay: Int,
		usersActiveWeek: Int,
		usersActiveMonth: Int,
		usersActiveHalfYear: Int
	) {
		self.communityId = communityId
		self.subscribers = subscribers
		self.posts = posts
		self.comments = comments
		self.published = published
		self.usersActiveDay = usersActiveDay
		self.usersActiveWeek = usersActiveWeek
		self.usersActiveMonth = usersActiveMonth
		self.usersActiveHalfYear = usersActiveHalfYear
	}
}
