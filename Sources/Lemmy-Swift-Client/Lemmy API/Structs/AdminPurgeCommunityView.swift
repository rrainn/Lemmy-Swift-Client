import Foundation

public struct AdminPurgeCommunityView: Codable, Hashable {
	public let adminPurgeCommunity: AdminPurgeCommunity
	public let admin: Person?

	public init(
		adminPurgeCommunity: AdminPurgeCommunity,
		admin: Person? = nil
	) {
		self.adminPurgeCommunity = adminPurgeCommunity
		self.admin = admin
	}
}
