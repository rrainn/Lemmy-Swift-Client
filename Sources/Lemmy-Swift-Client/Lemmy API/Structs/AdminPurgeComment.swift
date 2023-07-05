import Foundation

public struct AdminPurgeComment: Codable, Identifiable, Hashable {
	public let admin_person_id: Int
	public let id: Int
	public let post_id: Int
	public let reason: String?
	public let when_: String

	public init(admin_person_id: Int, id: Int, post_id: Int, reason: String? = nil, when_: String) {
		self.admin_person_id = admin_person_id
		self.id = id
		self.post_id = post_id
		self.reason = reason
		self.when_ = when_
	}
}
