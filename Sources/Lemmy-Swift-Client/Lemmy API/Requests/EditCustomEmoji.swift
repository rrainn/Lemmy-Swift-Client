import Foundation

public struct EditCustomEmojiRequest: APIRequest {
	public typealias Response = CustomEmojiResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/custom_emoji"

	public let id: CustomEmojiId
	public let category: String
	public let imageUrl: String
	public let altText: String
	public let keywords: [String]

	public init(
		id: CustomEmojiId,
		category: String,
		imageUrl: String,
		altText: String,
		keywords: [String]
	) {
		self.id = id
		self.category = category
		self.imageUrl = imageUrl
		self.altText = altText
		self.keywords = keywords
	}
}
