import Foundation

public struct AdminPurgePostView: Codable, Hashable {
	public let adminPurgePost: AdminPurgePost
	public let admin: Person?
	public let community: Community

	public init(
		adminPurgePost: AdminPurgePost,
		admin: Person? = nil,
		community: Community
	) {
		self.adminPurgePost = adminPurgePost
		self.admin = admin
		self.community = community
	}
}
