import Foundation

public struct ModRemovePostView: Codable, Hashable {
	public let modRemovePost: ModRemovePost
	public let moderator: Person?
	public let post: Post
	public let community: Community

	public init(
		modRemovePost: ModRemovePost,
		moderator: Person? = nil,
		post: Post,
		community: Community
	) {
		self.modRemovePost = modRemovePost
		self.moderator = moderator
		self.post = post
		self.community = community
	}
}
