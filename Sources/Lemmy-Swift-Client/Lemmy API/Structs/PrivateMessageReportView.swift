import Foundation

public struct PrivateMessageReportView: Codable, Hashable {
	public let privateMessageReport: PrivateMessageReport
	public let privateMessage: PrivateMessage
	public let privateMessageCreator: Person
	public let creator: Person
	public let resolver: Person?

	public init(
		privateMessageReport: PrivateMessageReport,
		privateMessage: PrivateMessage,
		privateMessageCreator: Person,
		creator: Person,
		resolver: Person? = nil
	) {
		self.privateMessageReport = privateMessageReport
		self.privateMessage = privateMessage
		self.privateMessageCreator = privateMessageCreator
		self.creator = creator
		self.resolver = resolver
	}
}
