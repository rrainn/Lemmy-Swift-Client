import Foundation

public struct AdminPurgeCommunityView: Codable, Hashable {
	public let admin_purge_community: AdminPurgeCommunity?
	public let admin: Person?

	public init(
		admin_purge_community: AdminPurgeCommunity? = nil,
		admin: Person? = nil
	) {
		self.admin_purge_community = admin_purge_community
		self.admin = admin
	}
}
