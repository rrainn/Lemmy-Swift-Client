import Foundation

public struct CustomEmojiKeyword: Codable, Hashable {
	public let customEmojiId: CustomEmojiId
	public let keyword: String

	public init(
		customEmojiId: CustomEmojiId,
		keyword: String
	) {
		self.customEmojiId = customEmojiId
		self.keyword = keyword
	}
}
