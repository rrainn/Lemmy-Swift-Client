import Foundation

public struct ModFeaturePost: Codable, Identifiable, Hashable {
	public let id: Int?
	public let mod_person_id: PersonId?
	public let post_id: PostId?
	public let featured: Bool?
	public let when_: String?
	public let is_featured_community: Bool?

	public init(
		id: Int? = nil,
		mod_person_id: PersonId? = nil,
		post_id: PostId? = nil,
		featured: Bool? = nil,
		when_: String? = nil,
		is_featured_community: Bool? = nil
	) {
		self.id = id
		self.mod_person_id = mod_person_id
		self.post_id = post_id
		self.featured = featured
		self.when_ = when_
		self.is_featured_community = is_featured_community
	}
}
