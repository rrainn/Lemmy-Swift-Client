import Foundation

public struct EditCustomEmojiRequest: APIRequest {
	public typealias Response = CustomEmojiResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/custom_emoji"

	public let id: CustomEmojiId?
	public let category: String?
	public let image_url: String?
	public let alt_text: String?
	public let keywords: [String]?

	public init(
		id: CustomEmojiId? = nil,
		category: String? = nil,
		image_url: String? = nil,
		alt_text: String? = nil,
		keywords: [String]? = nil
	) {
		self.id = id
		self.category = category
		self.image_url = image_url
		self.alt_text = alt_text
		self.keywords = keywords
	}
}
