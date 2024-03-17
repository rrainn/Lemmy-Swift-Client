import Foundation

public struct CreatePostReportRequest: APIRequest {
	public typealias Response = PostReportResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/post/report"

	public let post_id: PostId?
	public let reason: String?

	public init(
		post_id: PostId? = nil,
		reason: String? = nil
	) {
		self.post_id = post_id
		self.reason = reason
	}
}

public struct PostReportResponse: APIResponse {
	public let post_report_view: PostReportView?

	public init(
		post_report_view: PostReportView? = nil
	) {
		self.post_report_view = post_report_view
	}
}
