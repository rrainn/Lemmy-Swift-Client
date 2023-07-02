import Foundation

public struct ResolvePrivateMessageReportRequest: APIRequest {
	public typealias Response = PrivateMessageReportResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/private_message/report/resolve"

	public let auth: String
	public let report_id: Int
	public let resolved: Bool

	public init(auth: String, report_id: Int, resolved: Bool) {
		self.auth = auth
		self.report_id = report_id
		self.resolved = resolved
	}
}
