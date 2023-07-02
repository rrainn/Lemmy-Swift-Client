import Foundation

public struct ResolveCommentReportRequest: APIRequest {
	public typealias Response = CommentReportResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/comment/report/resolve"

	public let auth: String
	public let report_id: Int
	/// Either resolve or unresolve a report.
	public let resolved: Bool

	public init(auth: String, report_id: Int, resolved: Bool) {
		self.auth = auth
		self.report_id = report_id
		self.resolved = resolved
	}
}
