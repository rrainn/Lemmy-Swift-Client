import Foundation

public struct ResolveCommentReportRequest: APIRequest {
	public typealias Response = CommentReportResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/comment/report/resolve"

	public let reportId: CommentReportId
	public let resolved: Bool

	public init(
		reportId: CommentReportId,
		resolved: Bool
	) {
		self.reportId = reportId
		self.resolved = resolved
	}
}
