import Foundation

public struct CreateCustomEmojiRequest: APIRequest {
	public typealias Response = CustomEmojiResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/custom_emoji"

	public let category: String
	public let shortcode: String
	public let image_url: String
	public let alt_text: String
	public let keywords: [String]

	public init(
		category: String,
		shortcode: String,
		image_url: String,
		alt_text: String,
		keywords: [String]
	) {
		self.category = category
		self.shortcode = shortcode
		self.image_url = image_url
		self.alt_text = alt_text
		self.keywords = keywords
	}
}

public struct CustomEmojiResponse: APIResponse {
	public let custom_emoji: CustomEmojiView

	public init(
		custom_emoji: CustomEmojiView
	) {
		self.custom_emoji = custom_emoji
	}
}
