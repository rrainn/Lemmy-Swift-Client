import Foundation

public struct AdminPurgePostView: Codable, Hashable {
	public let admin_purge_post: AdminPurgePost?
	public let admin: Person?
	public let community: Community?

	public init(
		admin_purge_post: AdminPurgePost? = nil,
		admin: Person? = nil,
		community: Community? = nil
	) {
		self.admin_purge_post = admin_purge_post
		self.admin = admin
		self.community = community
	}
}
