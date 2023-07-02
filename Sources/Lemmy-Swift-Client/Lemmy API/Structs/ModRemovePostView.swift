import Foundation

public struct ModRemovePostView: Codable {
	public let community: CommunitySafe
	public let mod_remove_post: ModRemovePost
	public let moderator: PersonSafe?
	public let post: Post

	public init(
		community: CommunitySafe,
		mod_remove_post: ModRemovePost,
		moderator: PersonSafe? = nil,
		post: Post
	) {
		self.community = community
		self.mod_remove_post = mod_remove_post
		self.moderator = moderator
		self.post = post
	}
}
