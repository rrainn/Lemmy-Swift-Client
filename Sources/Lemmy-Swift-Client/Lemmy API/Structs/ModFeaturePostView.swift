import Foundation

public struct ModFeaturePostView: Codable, Hashable {
	public let modFeaturePost: ModFeaturePost
	public let moderator: Person?
	public let post: Post
	public let community: Community

	public init(
		modFeaturePost: ModFeaturePost,
		moderator: Person? = nil,
		post: Post,
		community: Community
	) {
		self.modFeaturePost = modFeaturePost
		self.moderator = moderator
		self.post = post
		self.community = community
	}
}
