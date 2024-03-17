import Foundation

public struct AdminPurgePost: Codable, Identifiable, Hashable {
	public let id: Int?
	public let admin_person_id: PersonId?
	public let community_id: CommunityId?
	public let reason: String?
	public let when_: String?

	public init(
		id: Int? = nil,
		admin_person_id: PersonId? = nil,
		community_id: CommunityId? = nil,
		reason: String? = nil,
		when_: String? = nil
	) {
		self.id = id
		self.admin_person_id = admin_person_id
		self.community_id = community_id
		self.reason = reason
		self.when_ = when_
	}
}
