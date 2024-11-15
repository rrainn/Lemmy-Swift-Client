import Foundation

public struct PostView: Codable, Hashable {
	public let post: Post?
	public let creator: Person?
	public let community: Community?
	public let image_details: ImageDetails?
	public let creator_banned_from_community: Bool?
	public let banned_from_community: Bool?
	public let creator_is_moderator: Bool?
	public let creator_is_admin: Bool?
	public let counts: PostAggregates?
	public let subscribed: SubscribedType?
	public let saved: Bool?
	public let read: Bool?
	public let hidden: Bool?
	public let creator_blocked: Bool?
	public let my_vote: Int?
	public let unread_comments: Int?

	public init(
		post: Post? = nil,
		creator: Person? = nil,
		community: Community? = nil,
		image_details: ImageDetails? = nil,
		creator_banned_from_community: Bool? = nil,
		banned_from_community: Bool? = nil,
		creator_is_moderator: Bool? = nil,
		creator_is_admin: Bool? = nil,
		counts: PostAggregates? = nil,
		subscribed: SubscribedType? = nil,
		saved: Bool? = nil,
		read: Bool? = nil,
		hidden: Bool? = nil,
		creator_blocked: Bool? = nil,
		my_vote: Int? = nil,
		unread_comments: Int? = nil
	) {
		self.post = post
		self.creator = creator
		self.community = community
		self.image_details = image_details
		self.creator_banned_from_community = creator_banned_from_community
		self.banned_from_community = banned_from_community
		self.creator_is_moderator = creator_is_moderator
		self.creator_is_admin = creator_is_admin
		self.counts = counts
		self.subscribed = subscribed
		self.saved = saved
		self.read = read
		self.hidden = hidden
		self.creator_blocked = creator_blocked
		self.my_vote = my_vote
		self.unread_comments = unread_comments
	}
}
