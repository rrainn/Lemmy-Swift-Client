import Foundation

public struct AdminPurgeComment: Codable, Identifiable, Hashable {
	public let id: Int?
	public let admin_person_id: PersonId?
	public let post_id: PostId?
	public let reason: String?
	public let when_: String?

	public init(
		id: Int? = nil,
		admin_person_id: PersonId? = nil,
		post_id: PostId? = nil,
		reason: String? = nil,
		when_: String? = nil
	) {
		self.id = id
		self.admin_person_id = admin_person_id
		self.post_id = post_id
		self.reason = reason
		self.when_ = when_
	}
}
