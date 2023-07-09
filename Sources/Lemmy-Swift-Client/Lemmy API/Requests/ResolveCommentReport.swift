import Foundation

public struct ResolveCommentReportRequest: APIRequest {
	public typealias Response = CommentReportResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/comment/report/resolve"

	public let report_id: CommentReportId
	public let resolved: Bool
	public let auth: String

	public init(
		report_id: CommentReportId,
		resolved: Bool,
		auth: String
	) {
		self.report_id = report_id
		self.resolved = resolved
		self.auth = auth
	}
}
