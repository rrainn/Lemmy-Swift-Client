import Foundation

public struct AdminPurgePost: Codable, Identifiable, Hashable {
	public let admin_person_id: Int
	public let community_id: Int
	public let id: Int
	public let reason: String?
	public let when_: String

	public init(
		admin_person_id: Int,
		community_id: Int,
		id: Int,
		reason: String? = nil,
		when_: String
	) {
		self.admin_person_id = admin_person_id
		self.community_id = community_id
		self.id = id
		self.reason = reason
		self.when_ = when_
	}
}
