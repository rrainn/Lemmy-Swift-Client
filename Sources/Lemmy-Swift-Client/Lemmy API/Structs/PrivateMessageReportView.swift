import Foundation

public struct PrivateMessageReportView: Codable, Hashable {
	public let private_message_report: PrivateMessageReport?
	public let private_message: PrivateMessage?
	public let private_message_creator: Person?
	public let creator: Person?
	public let resolver: Person?

	public init(
		private_message_report: PrivateMessageReport? = nil,
		private_message: PrivateMessage? = nil,
		private_message_creator: Person? = nil,
		creator: Person? = nil,
		resolver: Person? = nil
	) {
		self.private_message_report = private_message_report
		self.private_message = private_message
		self.private_message_creator = private_message_creator
		self.creator = creator
		self.resolver = resolver
	}
}
