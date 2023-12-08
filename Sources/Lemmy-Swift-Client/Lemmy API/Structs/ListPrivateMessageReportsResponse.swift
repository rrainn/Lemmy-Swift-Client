import Foundation

public struct ListPrivateMessageReportsResponse: Codable, Hashable {
	public let privateMessageReports: [PrivateMessageReportView]

	public init(
		privateMessageReports: [PrivateMessageReportView]
	) {
		self.privateMessageReports = privateMessageReports
	}
}
