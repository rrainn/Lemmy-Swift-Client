import Foundation

public struct ModRemoveComment: Codable {
	public let comment_id: Int
	public let id: Int
	public let mod_person_id: Int
	public let reason: String?
	public let removed: Bool?
	public let when_: String

	public init(
		comment_id: Int,
		id: Int,
		mod_person_id: Int,
		reason: String? = nil,
		removed: Bool? = nil,
		when_: String
	) {
		self.comment_id = comment_id
		self.id = id
		self.mod_person_id = mod_person_id
		self.reason = reason
		self.removed = removed
		self.when_ = when_
	}
}
