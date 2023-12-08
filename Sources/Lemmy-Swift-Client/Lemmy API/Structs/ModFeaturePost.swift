import Foundation

public struct ModFeaturePost: Codable, Identifiable, Hashable {
	public let id: Int
	public let modPersonId: PersonId
	public let postId: PostId
	public let featured: Bool
	public let when: String
	public let isFeaturedCommunity: Bool

	public init(
		id: Int,
		modPersonId: PersonId,
		postId: PostId,
		featured: Bool,
		when: String,
		isFeaturedCommunity: Bool
	) {
		self.id = id
		self.modPersonId = modPersonId
		self.postId = postId
		self.featured = featured
		self.when = when
		self.isFeaturedCommunity = isFeaturedCommunity
	}
}
