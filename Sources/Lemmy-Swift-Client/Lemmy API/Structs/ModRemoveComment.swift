import Foundation

public struct ModRemoveComment: Codable, Identifiable, Hashable {
	public let id: Int
	public let modPersonId: PersonId
	public let commentId: CommentId
	public let reason: String?
	public let removed: Bool
	public let when: String

	public init(
		id: Int,
		modPersonId: PersonId,
		commentId: CommentId,
		reason: String? = nil,
		removed: Bool,
		when: String
	) {
		self.id = id
		self.modPersonId = modPersonId
		self.commentId = commentId
		self.reason = reason
		self.removed = removed
		self.when = when
	}
}
