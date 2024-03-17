import Foundation

public struct PostView: Codable, Hashable {
	public let post: Post?
	public let creator: Person?
	public let community: Community?
	public let creator_banned_from_community: Bool?
	public let creator_is_moderator: Bool?
	public let creator_is_admin: Bool?
	public let counts: PostAggregates?
	public let subscribed: SubscribedType?
	public let saved: Bool?
	public let read: Bool?
	public let creator_blocked: Bool?
	public let my_vote: Int?
	public let unread_comments: Int?

	public init(
		post: Post? = nil,
		creator: Person? = nil,
		community: Community? = nil,
		creator_banned_from_community: Bool? = nil,
		creator_is_moderator: Bool? = nil,
		creator_is_admin: Bool? = nil,
		counts: PostAggregates? = nil,
		subscribed: SubscribedType? = nil,
		saved: Bool? = nil,
		read: Bool? = nil,
		creator_blocked: Bool? = nil,
		my_vote: Int? = nil,
		unread_comments: Int? = nil
	) {
		self.post = post
		self.creator = creator
		self.community = community
		self.creator_banned_from_community = creator_banned_from_community
		self.creator_is_moderator = creator_is_moderator
		self.creator_is_admin = creator_is_admin
		self.counts = counts
		self.subscribed = subscribed
		self.saved = saved
		self.read = read
		self.creator_blocked = creator_blocked
		self.my_vote = my_vote
		self.unread_comments = unread_comments
	}
}
