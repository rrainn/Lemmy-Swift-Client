import Foundation

public struct PrivateMessageView: Codable, Hashable {
	public let creator: Person
	public let private_message: PrivateMessage
	public let recipient: Person

	public init(creator: Person, private_message: PrivateMessage, recipient: Person) {
		self.creator = creator
		self.private_message = private_message
		self.recipient = recipient
	}
}
