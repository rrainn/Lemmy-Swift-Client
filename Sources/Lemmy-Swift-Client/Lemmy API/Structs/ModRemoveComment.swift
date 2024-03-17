import Foundation

public struct ModRemoveComment: Codable, Identifiable, Hashable {
	public let id: Int?
	public let mod_person_id: PersonId?
	public let comment_id: CommentId?
	public let reason: String?
	public let removed: Bool?
	public let when_: String?

	public init(
		id: Int? = nil,
		mod_person_id: PersonId? = nil,
		comment_id: CommentId? = nil,
		reason: String? = nil,
		removed: Bool? = nil,
		when_: String? = nil
	) {
		self.id = id
		self.mod_person_id = mod_person_id
		self.comment_id = comment_id
		self.reason = reason
		self.removed = removed
		self.when_ = when_
	}
}
