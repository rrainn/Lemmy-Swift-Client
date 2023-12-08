import Foundation

public struct PrivateMessageReportResponse: Codable, Hashable {
	public let privateMessageReportView: PrivateMessageReportView

	public init(
		privateMessageReportView: PrivateMessageReportView
	) {
		self.privateMessageReportView = privateMessageReportView
	}
}
