import Foundation

public struct ModLockPostView: Codable, Hashable {
	public let modLockPost: ModLockPost
	public let moderator: Person?
	public let post: Post
	public let community: Community

	public init(
		modLockPost: ModLockPost,
		moderator: Person? = nil,
		post: Post,
		community: Community
	) {
		self.modLockPost = modLockPost
		self.moderator = moderator
		self.post = post
		self.community = community
	}
}
