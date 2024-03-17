import Foundation

public struct CustomEmojiKeyword: Codable, Hashable {
	public let custom_emoji_id: CustomEmojiId
	public let keyword: String

	public init(
		custom_emoji_id: CustomEmojiId,
		keyword: String
	) {
		self.custom_emoji_id = custom_emoji_id
		self.keyword = keyword
	}
}
