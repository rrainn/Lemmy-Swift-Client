import Foundation

public struct ModLockPostView: Codable, Hashable {
	public let community: CommunitySafe
	public let mod_lock_post: ModLockPost
	public let moderator: Person?
	public let post: Post

	public init(
		community: CommunitySafe,
		mod_lock_post: ModLockPost,
		moderator: Person? = nil,
		post: Post
	) {
		self.community = community
		self.mod_lock_post = mod_lock_post
		self.moderator = moderator
		self.post = post
	}
}
