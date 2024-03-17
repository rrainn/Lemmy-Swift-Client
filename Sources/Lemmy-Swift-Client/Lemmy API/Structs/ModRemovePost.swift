import Foundation

public struct ModRemovePost: Codable, Identifiable, Hashable {
	public let id: Int?
	public let mod_person_id: PersonId?
	public let post_id: PostId?
	public let reason: String?
	public let removed: Bool?
	public let when_: String?

	public init(
		id: Int? = nil,
		mod_person_id: PersonId? = nil,
		post_id: PostId? = nil,
		reason: String? = nil,
		removed: Bool? = nil,
		when_: String? = nil
	) {
		self.id = id
		self.mod_person_id = mod_person_id
		self.post_id = post_id
		self.reason = reason
		self.removed = removed
		self.when_ = when_
	}
}
