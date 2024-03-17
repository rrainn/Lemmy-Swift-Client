import Foundation

public struct ResolvePostReportRequest: APIRequest {
	public typealias Response = PostReportResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/post/report/resolve"

	public let report_id: PostReportId
	public let resolved: Bool

	public init(
		report_id: PostReportId,
		resolved: Bool
	) {
		self.report_id = report_id
		self.resolved = resolved
	}
}
