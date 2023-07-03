import Foundation

public struct PostView: Codable {
	public let community: CommunitySafe
	public let counts: PostAggregates
	public let creator: Person
	public let creator_banned_from_community: Bool
	public let creator_blocked: Bool
	public let my_vote: Int?
	public let post: Post
	public let read: Bool
	public let saved: Bool
	public let subscribed: SubscribedType
	public let unread_comments: Int

	public init(
		community: CommunitySafe,
		counts: PostAggregates,
		creator: Person,
		creator_banned_from_community: Bool,
		creator_blocked: Bool,
		my_vote: Int? = nil,
		post: Post,
		read: Bool,
		saved: Bool,
		subscribed: SubscribedType,
		unread_comments: Int
	) {
		self.community = community
		self.counts = counts
		self.creator = creator
		self.creator_banned_from_community = creator_banned_from_community
		self.creator_blocked = creator_blocked
		self.my_vote = my_vote
		self.post = post
		self.read = read
		self.saved = saved
		self.subscribed = subscribed
		self.unread_comments = unread_comments
	}
}
