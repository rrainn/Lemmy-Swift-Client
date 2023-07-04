import Foundation

public struct AdminPurgePostView: Codable, Hashable {
	public let admin: Person?
	public let admin_purge_post: AdminPurgePost
	public let community: CommunitySafe

	public init(admin: Person? = nil, admin_purge_post: AdminPurgePost, community: CommunitySafe) {
		self.admin = admin
		self.admin_purge_post = admin_purge_post
		self.community = community
	}
}
