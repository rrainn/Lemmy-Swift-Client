import Foundation

public struct CommentReplyView: Codable, Hashable {
	public let comment_reply: CommentReply?
	public let comment: Comment?
	public let creator: Person?
	public let post: Post?
	public let community: Community?
	public let recipient: Person?
	public let counts: CommentAggregates?
	public let creator_banned_from_community: Bool?
	public let creator_is_moderator: Bool?
	public let creator_is_admin: Bool?
	public let subscribed: SubscribedType?
	public let saved: Bool?
	public let creator_blocked: Bool?
	public let my_vote: Int?

	public init(
		comment_reply: CommentReply? = nil,
		comment: Comment? = nil,
		creator: Person? = nil,
		post: Post? = nil,
		community: Community? = nil,
		recipient: Person? = nil,
		counts: CommentAggregates? = nil,
		creator_banned_from_community: Bool? = nil,
		creator_is_moderator: Bool? = nil,
		creator_is_admin: Bool? = nil,
		subscribed: SubscribedType? = nil,
		saved: Bool? = nil,
		creator_blocked: Bool? = nil,
		my_vote: Int? = nil
	) {
		self.comment_reply = comment_reply
		self.comment = comment
		self.creator = creator
		self.post = post
		self.community = community
		self.recipient = recipient
		self.counts = counts
		self.creator_banned_from_community = creator_banned_from_community
		self.creator_is_moderator = creator_is_moderator
		self.creator_is_admin = creator_is_admin
		self.subscribed = subscribed
		self.saved = saved
		self.creator_blocked = creator_blocked
		self.my_vote = my_vote
	}
}
