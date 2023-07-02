import Foundation

public struct PrivateMessageView: Codable {
	public let creator: PersonSafe
	public let private_message: PrivateMessage
	public let recipient: PersonSafe

	public init(creator: PersonSafe, private_message: PrivateMessage, recipient: PersonSafe) {
		self.creator = creator
		self.private_message = private_message
		self.recipient = recipient
	}
}
