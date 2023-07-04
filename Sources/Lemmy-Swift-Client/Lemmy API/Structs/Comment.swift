import Foundation

public struct Comment: Codable, Identifiable, Hashable {
	public let ap_id: String
	public let content: String
	public let creator_id: Int
	public let deleted: Bool
	public let distinguished: Bool
	public let id: Int
	public let language_id: Int
	public let local: Bool
	public let path: String
	public let post_id: Int
	public let published: String
	public let removed: Bool
	public let updated: String?

	public init(
		ap_id: String,
		content: String,
		creator_id: Int,
		deleted: Bool,
		distinguished: Bool,
		id: Int,
		language_id: Int,
		local: Bool,
		path: String,
		post_id: Int,
		published: String,
		removed: Bool,
		updated: String? = nil
	) {
		self.ap_id = ap_id
		self.content = content
		self.creator_id = creator_id
		self.deleted = deleted
		self.distinguished = distinguished
		self.id = id
		self.language_id = language_id
		self.local = local
		self.path = path
		self.post_id = post_id
		self.published = published
		self.removed = removed
		self.updated = updated
	}
}
