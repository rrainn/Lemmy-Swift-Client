import Foundation

public struct Post: Codable, Identifiable, Hashable {
	public let id: PostId
	public let name: String
	public let url: String?
	public let body: String?
	public let creatorId: PersonId
	public let communityId: CommunityId
	public let removed: Bool
	public let locked: Bool
	public let published: String
	public let updated: String?
	public let deleted: Bool
	public let nsfw: Bool
	public let embedTitle: String?
	public let embedDescription: String?
	public let thumbnailUrl: String?
	public let apId: String
	public let local: Bool
	public let embedVideoUrl: String?
	public let languageId: LanguageId
	public let featuredCommunity: Bool
	public let featuredLocal: Bool

	public init(
		id: PostId,
		name: String,
		url: String? = nil,
		body: String? = nil,
		creatorId: PersonId,
		communityId: CommunityId,
		removed: Bool,
		locked: Bool,
		published: String,
		updated: String? = nil,
		deleted: Bool,
		nsfw: Bool,
		embedTitle: String? = nil,
		embedDescription: String? = nil,
		thumbnailUrl: String? = nil,
		apId: String,
		local: Bool,
		embedVideoUrl: String? = nil,
		languageId: LanguageId,
		featuredCommunity: Bool,
		featuredLocal: Bool
	) {
		self.id = id
		self.name = name
		self.url = url
		self.body = body
		self.creatorId = creatorId
		self.communityId = communityId
		self.removed = removed
		self.locked = locked
		self.published = published
		self.updated = updated
		self.deleted = deleted
		self.nsfw = nsfw
		self.embedTitle = embedTitle
		self.embedDescription = embedDescription
		self.thumbnailUrl = thumbnailUrl
		self.apId = apId
		self.local = local
		self.embedVideoUrl = embedVideoUrl
		self.languageId = languageId
		self.featuredCommunity = featuredCommunity
		self.featuredLocal = featuredLocal
	}
}
