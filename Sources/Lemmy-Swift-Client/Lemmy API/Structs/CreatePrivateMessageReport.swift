import Foundation

public struct CreatePrivateMessageReport: Codable, Hashable {
	public let privateMessageId: PrivateMessageId
	public let reason: String

	public init(
		privateMessageId: PrivateMessageId,
		reason: String
	) {
		self.privateMessageId = privateMessageId
		self.reason = reason
	}
}
