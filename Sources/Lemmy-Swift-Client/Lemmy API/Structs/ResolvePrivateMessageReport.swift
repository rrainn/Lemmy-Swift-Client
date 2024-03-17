import Foundation

public struct ResolvePrivateMessageReport: Codable, Hashable {
	public let report_id: PrivateMessageReportId?
	public let resolved: Bool?

	public init(
		report_id: PrivateMessageReportId? = nil,
		resolved: Bool? = nil
	) {
		self.report_id = report_id
		self.resolved = resolved
	}
}
