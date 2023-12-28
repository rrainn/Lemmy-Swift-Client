import Foundation

public struct AdminPurgePost: Codable, Identifiable, Hashable {
	public let id: Int
	public let adminPersonId: PersonId
	public let communityId: CommunityId
	public let reason: String?
	public let when: String

	public init(
		id: Int,
		adminPersonId: PersonId,
		communityId: CommunityId,
		reason: String? = nil,
		when: String
	) {
		self.id = id
		self.adminPersonId = adminPersonId
		self.communityId = communityId
		self.reason = reason
		self.when = when
	}
}
