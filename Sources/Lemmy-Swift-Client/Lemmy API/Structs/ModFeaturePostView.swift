import Foundation

public struct ModFeaturePostView: Codable, Hashable {
	public let mod_feature_post: ModFeaturePost
	public let moderator: Person?
	public let post: Post
	public let community: Community

	public init(
		mod_feature_post: ModFeaturePost,
		moderator: Person? = nil,
		post: Post,
		community: Community
	) {
		self.mod_feature_post = mod_feature_post
		self.moderator = moderator
		self.post = post
		self.community = community
	}
}
