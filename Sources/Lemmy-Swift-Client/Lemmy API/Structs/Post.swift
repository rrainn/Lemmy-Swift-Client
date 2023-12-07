import Foundation

public struct Post: Codable, Identifiable, Hashable {
	public let id: PostId
	public let name: String
	public let url: String?
	public let body: String?
	public let creator_id: PersonId
	public let community_id: CommunityId
	public let removed: Bool
	public let locked: Bool
	public let published: String
	public let updated: String?
	public let deleted: Bool
	public let nsfw: Bool
	public let embed_title: String?
	public let embed_description: String?
	public let thumbnail_url: String?
	public let ap_id: String
	public let local: Bool
	public let embed_video_url: String?
	public let language_id: LanguageId
	public let featured_community: Bool?
	public let featured_local: Bool

	public init(
		id: PostId,
		name: String,
		url: String? = nil,
		body: String? = nil,
		creator_id: PersonId,
		community_id: CommunityId,
		removed: Bool,
		locked: Bool,
		published: String,
		updated: String? = nil,
		deleted: Bool,
		nsfw: Bool,
		embed_title: String? = nil,
		embed_description: String? = nil,
		thumbnail_url: String? = nil,
		ap_id: String,
		local: Bool,
		embed_video_url: String? = nil,
		language_id: LanguageId,
		featured_community: Bool?,
		featured_local: Bool
	) {
		self.id = id
		self.name = name
		self.url = url
		self.body = body
		self.creator_id = creator_id
		self.community_id = community_id
		self.removed = removed
		self.locked = locked
		self.published = published
		self.updated = updated
		self.deleted = deleted
		self.nsfw = nsfw
		self.embed_title = embed_title
		self.embed_description = embed_description
		self.thumbnail_url = thumbnail_url
		self.ap_id = ap_id
		self.local = local
		self.embed_video_url = embed_video_url
		self.language_id = language_id
		self.featured_community = featured_community
		self.featured_local = featured_local
	}
}
