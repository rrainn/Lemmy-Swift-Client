import Foundation

public struct PrivateMessageView: Codable, Hashable {
	public let private_message: PrivateMessage
	public let creator: Person
	public let recipient: Person

	public init(
		private_message: PrivateMessage,
		creator: Person,
		recipient: Person
	) {
		self.private_message = private_message
		self.creator = creator
		self.recipient = recipient
	}
}
