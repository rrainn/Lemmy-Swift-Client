import Foundation

public struct PersonMentionView: Codable, Hashable {
	public let comment: Comment
	public let community: CommunitySafe
	public let counts: CommentAggregates
	public let creator: Person
	public let creator_banned_from_community: Bool
	public let creator_blocked: Bool
	public let my_vote: Int?
	public let person_mention: PersonMention
	public let post: Post
	public let recipient: Person
	public let saved: Bool
	public let subscribed: SubscribedType

	public init(
		comment: Comment,
		community: CommunitySafe,
		counts: CommentAggregates,
		creator: Person,
		creator_banned_from_community: Bool,
		creator_blocked: Bool,
		my_vote: Int? = nil,
		person_mention: PersonMention,
		post: Post,
		recipient: Person,
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
		self.person_mention = person_mention
		self.post = post
		self.recipient = recipient
		self.saved = saved
		self.subscribed = subscribed
	}
}
