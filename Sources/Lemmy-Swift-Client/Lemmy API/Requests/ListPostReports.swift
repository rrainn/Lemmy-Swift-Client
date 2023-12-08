import Foundation

public struct ListPostReportsRequest: APIRequest {
	public typealias Response = ListPostReportsResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/post/report/list"

	public let page: Int?
	public let limit: Int?
	public let unresolvedOnly: Bool?
	public let communityId: CommunityId?

	public init(
		page: Int? = nil,
		limit: Int? = nil,
		unresolvedOnly: Bool? = nil,
		communityId: CommunityId? = nil
	) {
		self.page = page
		self.limit = limit
		self.unresolvedOnly = unresolvedOnly
		self.communityId = communityId
	}
}

public struct ListPostReportsResponse: APIResponse {
	public let postReports: [PostReportView]

	public init(
		postReports: [PostReportView]
	) {
		self.postReports = postReports
	}
}
