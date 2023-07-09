import Foundation

public struct Comment: Codable, Identifiable, Hashable {
	public let id: CommentId
	public let creator_id: PersonId
	public let post_id: PostId
	public let content: String
	public let removed: Bool
	public let published: String
	public let updated: String?
	public let deleted: Bool
	public let ap_id: String
	public let local: Bool
	public let path: String
	public let distinguished: Bool
	public let language_id: LanguageId

	public init(
		id: CommentId,
		creator_id: PersonId,
		post_id: PostId,
		content: String,
		removed: Bool,
		published: String,
		updated: String? = nil,
		deleted: Bool,
		ap_id: String,
		local: Bool,
		path: String,
		distinguished: Bool,
		language_id: LanguageId
	) {
		self.id = id
		self.creator_id = creator_id
		self.post_id = post_id
		self.content = content
		self.removed = removed
		self.published = published
		self.updated = updated
		self.deleted = deleted
		self.ap_id = ap_id
		self.local = local
		self.path = path
		self.distinguished = distinguished
		self.language_id = language_id
	}
}
