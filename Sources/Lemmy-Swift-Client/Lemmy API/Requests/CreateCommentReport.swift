import Foundation

public struct CreateCommentReportRequest: APIRequest {
	public typealias Response = CommentReportResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/comment/report"

	public let comment_id: CommentId
	public let reason: String
	public let auth: String

	public init(
		comment_id: CommentId,
		reason: String,
		auth: String
	) {
		self.comment_id = comment_id
		self.reason = reason
		self.auth = auth
	}
}

public struct CommentReportResponse: APIResponse {
	public let comment_report_view: CommentReportView

	public init(
		comment_report_view: CommentReportView
	) {
		self.comment_report_view = comment_report_view
	}
}
