import Foundation

public struct AdminPurgeCommentView: Codable, Hashable {
	public let adminPurgeComment: AdminPurgeComment
	public let admin: Person?
	public let post: Post

	public init(
		adminPurgeComment: AdminPurgeComment,
		admin: Person? = nil,
		post: Post
	) {
		self.adminPurgeComment = adminPurgeComment
		self.admin = admin
		self.post = post
	}
}
