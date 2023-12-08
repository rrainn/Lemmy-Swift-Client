import Foundation

public struct CreateCommentReportRequest: APIRequest {
	public typealias Response = CommentReportResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/comment/report"

	public let commentId: CommentId
	public let reason: String

	public init(
		commentId: CommentId,
		reason: String
	) {
		self.commentId = commentId
		self.reason = reason
	}
}

public struct CommentReportResponse: APIResponse {
	public let commentReportView: CommentReportView

	public init(
		commentReportView: CommentReportView
	) {
		self.commentReportView = commentReportView
	}
}
