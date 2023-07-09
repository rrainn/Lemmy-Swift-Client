import Foundation

public struct CreatePrivateMessageReport: Codable, Hashable {
	public let private_message_id: PrivateMessageId
	public let reason: String
	public let auth: String

	public init(
		private_message_id: PrivateMessageId,
		reason: String,
		auth: String
	) {
		self.private_message_id = private_message_id
		self.reason = reason
		self.auth = auth
	}
}
