import Foundation

public struct CommentReport: Codable, Identifiable, Hashable {
	public let comment_id: Int
	public let creator_id: Int
	public let id: Int
	public let original_comment_text: String
	public let published: String
	public let reason: String
	public let resolved: Bool
	public let resolver_id: Int?
	public let updated: String?

	public init(
		comment_id: Int,
		creator_id: Int,
		id: Int,
		original_comment_text: String,
		published: String,
		reason: String,
		resolved: Bool,
		resolver_id: Int? = nil,
		updated: String? = nil
	) {
		self.comment_id = comment_id
		self.creator_id = creator_id
		self.id = id
		self.original_comment_text = original_comment_text
		self.published = published
		self.reason = reason
		self.resolved = resolved
		self.resolver_id = resolver_id
		self.updated = updated
	}
}
