import Foundation

public struct CustomEmoji: Codable, Identifiable, Hashable {
	public let id: CustomEmojiId
	public let localSiteId: LocalSiteId
	public let shortcode: String
	public let imageUrl: String
	public let altText: String
	public let category: String
	public let published: String
	public let updated: String?

	public init(
		id: CustomEmojiId,
		localSiteId: LocalSiteId,
		shortcode: String,
		imageUrl: String,
		altText: String,
		category: String,
		published: String,
		updated: String? = nil
	) {
		self.id = id
		self.localSiteId = localSiteId
		self.shortcode = shortcode
		self.imageUrl = imageUrl
		self.altText = altText
		self.category = category
		self.published = published
		self.updated = updated
	}
}
