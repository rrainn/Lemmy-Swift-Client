import Foundation

public struct ModRemovePost: Codable, Identifiable, Hashable {
	public let id: Int
	public let mod_person_id: PersonId
	public let post_id: PostId
	public let reason: String?
	public let removed: Bool
	public let when_: String

	public init(
		id: Int,
		mod_person_id: PersonId,
		post_id: PostId,
		reason: String? = nil,
		removed: Bool,
		when_: String
	) {
		self.id = id
		self.mod_person_id = mod_person_id
		self.post_id = post_id
		self.reason = reason
		self.removed = removed
		self.when_ = when_
	}
}
