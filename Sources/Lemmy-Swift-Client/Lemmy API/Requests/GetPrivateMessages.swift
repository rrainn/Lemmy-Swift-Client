import Foundation

public struct GetPrivateMessagesRequest: APIRequest {
	public typealias Response = PrivateMessagesResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/private_message/list"

	public let unread_only: Bool?
	public let page: Int?
	public let limit: Int?
	public let auth: String

	public init(
		unread_only: Bool? = nil,
		page: Int? = nil,
		limit: Int? = nil,
		auth: String
	) {
		self.unread_only = unread_only
		self.page = page
		self.limit = limit
		self.auth = auth
	}
}

public struct PrivateMessagesResponse: APIResponse {
	public let private_messages: [PrivateMessageView]

	public init(
		private_messages: [PrivateMessageView]
	) {
		self.private_messages = private_messages
	}
}
