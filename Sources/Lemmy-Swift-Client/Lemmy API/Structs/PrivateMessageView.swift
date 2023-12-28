import Foundation

public struct PrivateMessageView: Codable, Hashable {
	public let privateMessage: PrivateMessage
	public let creator: Person
	public let recipient: Person

	public init(
		privateMessage: PrivateMessage,
		creator: Person,
		recipient: Person
	) {
		self.privateMessage = privateMessage
		self.creator = creator
		self.recipient = recipient
	}
}
