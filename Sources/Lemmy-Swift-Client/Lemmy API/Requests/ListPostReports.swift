import Foundation

public struct ListPostReportsRequest: APIRequest {
	public typealias Response = ListPostReportsResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/post/report/list"

	public let page: Int?
	public let limit: Int?
	public let unresolved_only: Bool?
	public let community_id: CommunityId?
	public let post_id: PostId?

	public init(
		page: Int? = nil,
		limit: Int? = nil,
		unresolved_only: Bool? = nil,
		community_id: CommunityId? = nil,
		post_id: PostId? = nil
	) {
		self.page = page
		self.limit = limit
		self.unresolved_only = unresolved_only
		self.community_id = community_id
		self.post_id = post_id
	}
}

public struct ListPostReportsResponse: APIResponse {
	public let post_reports: [PostReportView]?

	public init(
		post_reports: [PostReportView]? = nil
	) {
		self.post_reports = post_reports
	}
}
