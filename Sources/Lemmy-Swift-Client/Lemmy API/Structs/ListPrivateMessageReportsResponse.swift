import Foundation

public struct ListPrivateMessageReportsResponse: Codable, Hashable {
	public let private_message_reports: [PrivateMessageReportView]?

	public init(
		private_message_reports: [PrivateMessageReportView]? = nil
	) {
		self.private_message_reports = private_message_reports
	}
}
