import Foundation

public struct AdminPurgeCommunity: Codable, Identifiable, Hashable {
	public let id: Int
	public let adminPersonId: PersonId
	public let reason: String?
	public let when: String

	public init(
		id: Int,
		adminPersonId: PersonId,
		reason: String? = nil,
		when: String
	) {
		self.id = id
		self.adminPersonId = adminPersonId
		self.reason = reason
		self.when = when
	}
}
