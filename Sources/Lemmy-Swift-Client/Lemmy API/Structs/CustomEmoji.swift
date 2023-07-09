import Foundation

public struct CustomEmoji: Codable, Identifiable, Hashable {
	public let id: CustomEmojiId
	public let local_site_id: LocalSiteId
	public let shortcode: String
	public let image_url: String
	public let alt_text: String
	public let category: String
	public let published: String
	public let updated: String?

	public init(
		id: CustomEmojiId,
		local_site_id: LocalSiteId,
		shortcode: String,
		image_url: String,
		alt_text: String,
		category: String,
		published: String,
		updated: String? = nil
	) {
		self.id = id
		self.local_site_id = local_site_id
		self.shortcode = shortcode
		self.image_url = image_url
		self.alt_text = alt_text
		self.category = category
		self.published = published
		self.updated = updated
	}
}
