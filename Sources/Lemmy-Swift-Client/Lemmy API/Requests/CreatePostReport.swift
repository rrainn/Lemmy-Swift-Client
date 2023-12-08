import Foundation

public struct CreatePostReportRequest: APIRequest {
	public typealias Response = PostReportResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/post/report"

	public let postId: PostId
	public let reason: String

	public init(
		postId: PostId,
		reason: String
	) {
		self.postId = postId
		self.reason = reason
	}
}

public struct PostReportResponse: APIResponse {
	public let postReportView: PostReportView

	public init(
		postReportView: PostReportView
	) {
		self.postReportView = postReportView
	}
}
