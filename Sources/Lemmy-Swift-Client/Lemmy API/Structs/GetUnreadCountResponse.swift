import Foundation

public struct GetUnreadCountResponse: Codable, Hashable {
	public let replies: Int
	public let mentions: Int
	public let privateMessages: Int

	public init(
		replies: Int,
		mentions: Int,
		privateMessages: Int
	) {
		self.replies = replies
		self.mentions = mentions
		self.privateMessages = privateMessages
	}
}
