import Foundation

public struct ResolvePrivateMessageReport: Codable, Hashable {
	public let report_id: PrivateMessageReportId
	public let resolved: Bool
	public let auth: String

	public init(
		report_id: PrivateMessageReportId,
		resolved: Bool,
		auth: String
	) {
		self.report_id = report_id
		self.resolved = resolved
		self.auth = auth
	}
}
