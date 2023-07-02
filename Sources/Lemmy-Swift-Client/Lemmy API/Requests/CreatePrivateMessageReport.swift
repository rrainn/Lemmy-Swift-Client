import Foundation

public struct CreatePrivateMessageReportRequest: APIRequest {
	public typealias Response = PrivateMessageReportResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/private_message/report"

	public let auth: String
	public let private_message_id: Int
	public let reason: String

	public init(auth: String, private_message_id: Int, reason: String) {
		self.auth = auth
		self.private_message_id = private_message_id
		self.reason = reason
	}
}

public struct PrivateMessageReportResponse: APIResponse {
	public let private_message_report_view: PrivateMessageReportView

	public init(private_message_report_view: PrivateMessageReportView) {
		self.private_message_report_view = private_message_report_view
	}
}
