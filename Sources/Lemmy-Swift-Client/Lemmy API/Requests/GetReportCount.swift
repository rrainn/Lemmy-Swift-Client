import Foundation

public struct GetReportCountRequest: APIRequest {
	public typealias Response = GetReportCountResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/user/report_count"

	public let community_id: CommunityId?

	public init(
		community_id: CommunityId? = nil
	) {
		self.community_id = community_id
	}
}

public struct GetReportCountResponse: APIResponse {
	public let community_id: CommunityId?
	public let comment_reports: Int?
	public let post_reports: Int?
	public let private_message_reports: Int?

	public init(
		community_id: CommunityId? = nil,
		comment_reports: Int? = nil,
		post_reports: Int? = nil,
		private_message_reports: Int? = nil
	) {
		self.community_id = community_id
		self.comment_reports = comment_reports
		self.post_reports = post_reports
		self.private_message_reports = private_message_reports
	}
}
