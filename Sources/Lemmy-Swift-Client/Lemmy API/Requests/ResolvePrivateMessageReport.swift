import Foundation

public struct ResolvePrivateMessageReportRequest: APIRequest {
	public typealias Response = PrivateMessageReportResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/private_message/report/resolve"

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
