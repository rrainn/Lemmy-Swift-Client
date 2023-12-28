import Foundation

public struct CommentReplyView: Codable, Hashable {
	public let commentReply: CommentReply
	public let comment: Comment
	public let creator: Person
	public let post: Post
	public let community: Community
	public let recipient: Person
	public let counts: CommentAggregates
	public let creatorBannedFromCommunity: Bool
	public let creatorIsModerator: Bool
	public let creatorIsAdmin: Bool
	public let subscribed: SubscribedType
	public let saved: Bool
	public let creatorBlocked: Bool
	public let myVote: Int?

	public init(
		commentReply: CommentReply,
		comment: Comment,
		creator: Person,
		post: Post,
		community: Community,
		recipient: Person,
		counts: CommentAggregates,
		creatorBannedFromCommunity: Bool,
		creatorIsModerator: Bool,
		creatorIsAdmin: Bool,
		subscribed: SubscribedType,
		saved: Bool,
		creatorBlocked: Bool,
		myVote: Int? = nil
	) {
		self.commentReply = commentReply
		self.comment = comment
		self.creator = creator
		self.post = post
		self.community = community
		self.recipient = recipient
		self.counts = counts
		self.creatorBannedFromCommunity = creatorBannedFromCommunity
		self.creatorIsModerator = creatorIsModerator
		self.creatorIsAdmin = creatorIsAdmin
		self.subscribed = subscribed
		self.saved = saved
		self.creatorBlocked = creatorBlocked
		self.myVote = myVote
	}
}
