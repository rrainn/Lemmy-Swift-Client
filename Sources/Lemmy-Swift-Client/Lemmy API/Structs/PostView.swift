import Foundation

public struct PostView: Codable, Hashable {
	public let post: Post
	public let creator: Person
	public let community: Community
	public let creatorBannedFromCommunity: Bool
	public let creatorIsModerator: Bool
	public let creatorIsAdmin: Bool
	public let counts: PostAggregates
	public let subscribed: SubscribedType
	public let saved: Bool
	public let read: Bool
	public let creatorBlocked: Bool
	public let myVote: Int?
	public let unreadComments: Int

	public init(
		post: Post,
		creator: Person,
		community: Community,
		creatorBannedFromCommunity: Bool,
		creatorIsModerator: Bool,
		creatorIsAdmin: Bool,
		counts: PostAggregates,
		subscribed: SubscribedType,
		saved: Bool,
		read: Bool,
		creatorBlocked: Bool,
		myVote: Int? = nil,
		unreadComments: Int
	) {
		self.post = post
		self.creator = creator
		self.community = community
		self.creatorBannedFromCommunity = creatorBannedFromCommunity
		self.creatorIsModerator = creatorIsModerator
		self.creatorIsAdmin = creatorIsAdmin
		self.counts = counts
		self.subscribed = subscribed
		self.saved = saved
		self.read = read
		self.creatorBlocked = creatorBlocked
		self.myVote = myVote
		self.unreadComments = unreadComments
	}
}
