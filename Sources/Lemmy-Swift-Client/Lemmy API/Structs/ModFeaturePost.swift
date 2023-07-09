import Foundation

public struct ModFeaturePost: Codable, Identifiable, Hashable {
	public let id: Int
	public let mod_person_id: PersonId
	public let post_id: PostId
	public let featured: Bool
	public let when_: String
	public let is_featured_community: Bool

	public init(
		id: Int,
		mod_person_id: PersonId,
		post_id: PostId,
		featured: Bool,
		when_: String,
		is_featured_community: Bool
	) {
		self.id = id
		self.mod_person_id = mod_person_id
		self.post_id = post_id
		self.featured = featured
		self.when_ = when_
		self.is_featured_community = is_featured_community
	}
}
