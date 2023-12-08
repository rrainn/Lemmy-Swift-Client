import Foundation

public struct Comment: Codable, Identifiable, Hashable {
	public let id: CommentId
	public let creatorId: PersonId
	public let postId: PostId
	public let content: String
	public let removed: Bool
	public let published: String
	public let updated: String?
	public let deleted: Bool
	public let apId: String
	public let local: Bool
	public let path: String
	public let distinguished: Bool
	public let languageId: LanguageId

	public init(
		id: CommentId,
		creatorId: PersonId,
		postId: PostId,
		content: String,
		removed: Bool,
		published: String,
		updated: String? = nil,
		deleted: Bool,
		apId: String,
		local: Bool,
		path: String,
		distinguished: Bool,
		languageId: LanguageId
	) {
		self.id = id
		self.creatorId = creatorId
		self.postId = postId
		self.content = content
		self.removed = removed
		self.published = published
		self.updated = updated
		self.deleted = deleted
		self.apId = apId
		self.local = local
		self.path = path
		self.distinguished = distinguished
		self.languageId = languageId
	}
}
