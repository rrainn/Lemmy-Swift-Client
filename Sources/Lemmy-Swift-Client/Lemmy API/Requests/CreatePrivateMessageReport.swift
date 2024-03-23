import Foundation

public struct CreatePrivateMessageReportRequest: APIRequest {
	public typealias Response = PrivateMessageReportResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/private_message/report"

	public let private_message_id: PrivateMessageId?
	public let reason: String?

	public init(
		private_message_id: PrivateMessageId? = nil,
		reason: String? = nil
	) {
		self.private_message_id = private_message_id
		self.reason = reason
	}
}

public struct PrivateMessageReportResponse: APIResponse {
	public let private_message_report_view: PrivateMessageReportView?

	public init(
		private_message_report_view: PrivateMessageReportView? = nil
	) {
		self.private_message_report_view = private_message_report_view
	}
}
