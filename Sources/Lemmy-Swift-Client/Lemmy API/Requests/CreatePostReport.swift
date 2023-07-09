import Foundation

public struct CreatePostReportRequest: APIRequest {
	public typealias Response = PostReportResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/post/report"

	public let post_id: PostId
	public let reason: String
	public let auth: String

	public init(
		post_id: PostId,
		reason: String,
		auth: String
	) {
		self.post_id = post_id
		self.reason = reason
		self.auth = auth
	}
}

public struct PostReportResponse: APIResponse {
	public let post_report_view: PostReportView

	public init(
		post_report_view: PostReportView
	) {
		self.post_report_view = post_report_view
	}
}
