import Foundation

public struct CommentView: Codable, Hashable {
	public let comment: Comment
	public let community: CommunitySafe
	public let counts: CommentAggregates
	public let creator: PersonSafe
	public let creator_banned_from_community: Bool
	public let creator_blocked: Bool
	public let my_vote: Int?
	public let post: Post
	public let saved: Bool
	public let subscribed: SubscribedType

	public init(
		comment: Comment,
		community: CommunitySafe,
		counts: CommentAggregates,
		creator: PersonSafe,
		creator_banned_from_community: Bool,
		creator_blocked: Bool,
		my_vote: Int? = nil,
		post: Post,
		saved: Bool,
		subscribed: SubscribedType
	) {
		self.comment = comment
		self.community = community
		self.counts = counts
		self.creator = creator
		self.creator_banned_from_community = creator_banned_from_community
		self.creator_blocked = creator_blocked
		self.my_vote = my_vote
		self.post = post
		self.saved = saved
		self.subscribed = subscribed
	}
}
