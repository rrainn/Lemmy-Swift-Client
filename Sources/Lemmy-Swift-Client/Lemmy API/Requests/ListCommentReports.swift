import Foundation

public struct ListCommentReportsRequest: APIRequest {
	public typealias Response = ListCommentReportsResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/comment/report/list"

	public let page: Int?
	public let limit: Int?
	public let unresolved_only: Bool?
	public let community_id: CommunityId?

	public init(
		page: Int? = nil,
		limit: Int? = nil,
		unresolved_only: Bool? = nil,
		community_id: CommunityId? = nil
	) {
		self.page = page
		self.limit = limit
		self.unresolved_only = unresolved_only
		self.community_id = community_id
	}
}

public struct ListCommentReportsResponse: APIResponse {
	public let comment_reports: [CommentReportView]

	public init(
		comment_reports: [CommentReportView]
	) {
		self.comment_reports = comment_reports
	}
}
