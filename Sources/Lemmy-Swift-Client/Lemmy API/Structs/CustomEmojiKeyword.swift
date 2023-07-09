import Foundation

public struct CustomEmojiKeyword: Codable, Identifiable, Hashable {
	public let id: Int
	public let custom_emoji_id: CustomEmojiId
	public let keyword: String

	public init(
		id: Int,
		custom_emoji_id: CustomEmojiId,
		keyword: String
	) {
		self.id = id
		self.custom_emoji_id = custom_emoji_id
		self.keyword = keyword
	}
}
