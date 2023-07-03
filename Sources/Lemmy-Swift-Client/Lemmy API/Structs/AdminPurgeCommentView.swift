import Foundation

public struct AdminPurgeCommentView: Codable {
	public let admin: Person?
	public let admin_purge_comment: AdminPurgeComment
	public let post: Post

	public init(admin: Person? = nil, admin_purge_comment: AdminPurgeComment, post: Post) {
		self.admin = admin
		self.admin_purge_comment = admin_purge_comment
		self.post = post
	}
}
