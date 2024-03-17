import Foundation

public struct Comment: Codable, Identifiable, Hashable {
	public let id: CommentId?
	public let creator_id: PersonId?
	public let post_id: PostId?
	public let content: String?
	public let removed: Bool?
	public let published: String?
	public let updated: String?
	public let deleted: Bool?
	public let ap_id: String?
	public let local: Bool?
	public let path: String?
	public let distinguished: Bool?
	public let language_id: LanguageId?

	public init(
		id: CommentId? = nil,
		creator_id: PersonId? = nil,
		post_id: PostId? = nil,
		content: String? = nil,
		removed: Bool? = nil,
		published: String? = nil,
		updated: String? = nil,
		deleted: Bool? = nil,
		ap_id: String? = nil,
		local: Bool? = nil,
		path: String? = nil,
		distinguished: Bool? = nil,
		language_id: LanguageId? = nil
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
