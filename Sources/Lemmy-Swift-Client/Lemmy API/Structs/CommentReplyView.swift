import Foundation

public struct CommentReplyView: Codable {
	public let comment: Comment
	public let comment_reply: CommentReply
	public let community: CommunitySafe
	public let counts: CommentAggregates
	public let creator: Person
	public let creator_banned_from_community: Bool
	public let creator_blocked: Bool
	public let my_vote: Int?
	public let post: Post
	public let recipient: Person
	public let saved: Bool
	public let subscribed: SubscribedType

	public init(
		comment: Comment,
		comment_reply: CommentReply,
		community: CommunitySafe,
		counts: CommentAggregates,
		creator: Person,
		creator_banned_from_community: Bool,
		creator_blocked: Bool,
		my_vote: Int? = nil,
		post: Post,
		recipient: Person,
		saved: Bool,
		subscribed: SubscribedType
	) {
		self.comment = comment
		self.comment_reply = comment_reply
		self.community = community
		self.counts = counts
		self.creator = creator
		self.creator_banned_from_community = creator_banned_from_community
		self.creator_blocked = creator_blocked
		self.my_vote = my_vote
		self.post = post
		self.recipient = recipient
		self.saved = saved
		self.subscribed = subscribed
	}
}
