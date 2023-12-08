import Foundation

public struct CreateCustomEmojiRequest: APIRequest {
	public typealias Response = CustomEmojiResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/custom_emoji"

	public let category: String
	public let shortcode: String
	public let imageUrl: String
	public let altText: String
	public let keywords: [String]

	public init(
		category: String,
		shortcode: String,
		imageUrl: String,
		altText: String,
		keywords: [String]
	) {
		self.category = category
		self.shortcode = shortcode
		self.imageUrl = imageUrl
		self.altText = altText
		self.keywords = keywords
	}
}

public struct CustomEmojiResponse: APIResponse {
	public let customEmoji: CustomEmojiView

	public init(
		customEmoji: CustomEmojiView
	) {
		self.customEmoji = customEmoji
	}
}
