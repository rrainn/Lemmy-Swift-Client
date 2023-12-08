import Foundation

public struct CustomEmojiView: Codable, Hashable {
	public let customEmoji: CustomEmoji
	public let keywords: [CustomEmojiKeyword]

	public init(
		customEmoji: CustomEmoji,
		keywords: [CustomEmojiKeyword]
	) {
		self.customEmoji = customEmoji
		self.keywords = keywords
	}
}
