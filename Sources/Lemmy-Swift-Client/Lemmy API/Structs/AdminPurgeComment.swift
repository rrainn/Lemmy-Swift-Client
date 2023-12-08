import Foundation

public struct AdminPurgeComment: Codable, Identifiable, Hashable {
	public let id: Int
	public let adminPersonId: PersonId
	public let postId: PostId
	public let reason: String?
	public let when: String

	public init(
		id: Int,
		adminPersonId: PersonId,
		postId: PostId,
		reason: String? = nil,
		when: String
	) {
		self.id = id
		self.adminPersonId = adminPersonId
		self.postId = postId
		self.reason = reason
		self.when = when
	}
}
