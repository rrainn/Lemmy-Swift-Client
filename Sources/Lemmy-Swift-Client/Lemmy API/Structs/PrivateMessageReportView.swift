import Foundation

public struct PrivateMessageReportView: Codable, Hashable {
	public let creator: Person
	public let private_message: PrivateMessage
	public let private_message_creator: Person
	public let private_message_report: PrivateMessageReport
	public let resolver: Person?

	public init(
		creator: Person,
		private_message: PrivateMessage,
		private_message_creator: Person,
		private_message_report: PrivateMessageReport,
		resolver: Person? = nil
	) {
		self.creator = creator
		self.private_message = private_message
		self.private_message_creator = private_message_creator
		self.private_message_report = private_message_report
		self.resolver = resolver
	}
}
