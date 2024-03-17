import Foundation

public struct AdminPurgeCommentView: Codable, Hashable {
	public let admin_purge_comment: AdminPurgeComment?
	public let admin: Person?
	public let post: Post?

	public init(
		admin_purge_comment: AdminPurgeComment? = nil,
		admin: Person? = nil,
		post: Post? = nil
	) {
		self.admin_purge_comment = admin_purge_comment
		self.admin = admin
		self.post = post
	}
}
