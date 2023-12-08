import Foundation

public struct ModLockPost: Codable, Identifiable, Hashable {
	public let id: Int
	public let modPersonId: PersonId
	public let postId: PostId
	public let locked: Bool
	public let when: String

	public init(
		id: Int,
		modPersonId: PersonId,
		postId: PostId,
		locked: Bool,
		when: String
	) {
		self.id = id
		self.modPersonId = modPersonId
		self.postId = postId
		self.locked = locked
		self.when = when
	}
}
