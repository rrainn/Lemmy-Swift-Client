import Foundation

public struct ListPrivateMessageReportsRequest: APIRequest {
	public typealias Response = ListPrivateMessageReportsResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/private_message/report/list"

	public let page: Int?
	public let limit: Int?
	public let unresolved_only: Bool?

	public init(
		page: Int? = nil,
		limit: Int? = nil,
		unresolved_only: Bool? = nil
	) {
		self.page = page
		self.limit = limit
		self.unresolved_only = unresolved_only
	}
}

public struct ListPrivateMessageReportsResponse: APIResponse {
	public let private_message_reports: [PrivateMessageReportView]?

	public init(
		private_message_reports: [PrivateMessageReportView]? = nil
	) {
		self.private_message_reports = private_message_reports
	}
}
