import Foundation

public struct ResolvePostReportRequest: APIRequest {
	public typealias Response = PostReportResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/post/report/resolve"

	public let reportId: PostReportId
	public let resolved: Bool

	public init(
		reportId: PostReportId,
		resolved: Bool
	) {
		self.reportId = reportId
		self.resolved = resolved
	}
}
