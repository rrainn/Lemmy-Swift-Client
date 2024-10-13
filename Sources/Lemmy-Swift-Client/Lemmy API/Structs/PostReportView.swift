import Foundation

public struct PostReportView: Codable, Hashable {
	public let post_report: PostReport?
	public let post: Post?
	public let community: Community?
	public let creator: Person?
	public let post_creator: Person?
	public let creator_banned_from_community: Bool?
	public let creator_is_moderator: Bool?
	public let creator_is_admin: Bool?
	public let subscribed: SubscribedType?
	public let saved: Bool?
	public let read: Bool?
	public let hidden: Bool?
	public let creator_blocked: Bool?
	public let my_vote: Int?
	public let unread_comments: Int?
	public let counts: PostAggregates?
	public let resolver: Person?

	public init(
		post_report: PostReport? = nil,
		post: Post? = nil,
		community: Community? = nil,
		creator: Person? = nil,
		post_creator: Person? = nil,
		creator_banned_from_community: Bool? = nil,
		creator_is_moderator: Bool? = nil,
		creator_is_admin: Bool? = nil,
		subscribed: SubscribedType? = nil,
		saved: Bool? = nil,
		read: Bool? = nil,
		hidden: Bool? = nil,
		creator_blocked: Bool? = nil,
		my_vote: Int? = nil,
		unread_comments: Int? = nil,
		counts: PostAggregates? = nil,
		resolver: Person? = nil
	) {
		self.post_report = post_report
		self.post = post
		self.community = community
		self.creator = creator
		self.post_creator = post_creator
		self.creator_banned_from_community = creator_banned_from_community
		self.creator_is_moderator = creator_is_moderator
		self.creator_is_admin = creator_is_admin
		self.subscribed = subscribed
		self.saved = saved
		self.read = read
		self.hidden = hidden
		self.creator_blocked = creator_blocked
		self.my_vote = my_vote
		self.unread_comments = unread_comments
		self.counts = counts
		self.resolver = resolver
	}
}
