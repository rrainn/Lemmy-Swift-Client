import Foundation

public struct ResolvePrivateMessageReport: Codable, Hashable {
	public let reportId: PrivateMessageReportId
	public let resolved: Bool

	public init(
		reportId: PrivateMessageReportId,
		resolved: Bool
	) {
		self.reportId = reportId
		self.resolved = resolved
	}
}
