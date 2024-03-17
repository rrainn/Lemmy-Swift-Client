import Foundation

public struct GetUnreadCountResponse: Codable, Hashable {
	public let replies: Int
	public let mentions: Int
	public let private_messages: Int

	public init(
		replies: Int,
		mentions: Int,
		private_messages: Int
	) {
		self.replies = replies
		self.mentions = mentions
		self.private_messages = private_messages
	}
}
