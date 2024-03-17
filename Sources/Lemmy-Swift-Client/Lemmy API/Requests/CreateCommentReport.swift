import Foundation

public struct CreateCommentReportRequest: APIRequest {
	public typealias Response = CommentReportResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/comment/report"

	public let comment_id: CommentId?
	public let reason: String?

	public init(
		comment_id: CommentId? = nil,
		reason: String? = nil
	) {
		self.comment_id = comment_id
		self.reason = reason
	}
}

public struct CommentReportResponse: APIResponse {
	public let comment_report_view: CommentReportView?

	public init(
		comment_report_view: CommentReportView? = nil
	) {
		self.comment_report_view = comment_report_view
	}
}
