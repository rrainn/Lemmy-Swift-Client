import Foundation

public struct ModRemovePost: Codable, Identifiable, Hashable {
	public let id: Int
	public let modPersonId: PersonId
	public let postId: PostId
	public let reason: String?
	public let removed: Bool
	public let when: String

	public init(
		id: Int,
		modPersonId: PersonId,
		postId: PostId,
		reason: String? = nil,
		removed: Bool,
		when: String
	) {
		self.id = id
		self.modPersonId = modPersonId
		self.postId = postId
		self.reason = reason
		self.removed = removed
		self.when = when
	}
}
