import Foundation

public struct CreatePrivateMessageRequest: APIRequest {
	public typealias Response = PrivateMessageResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/private_message"

	public let content: String
	public let recipient_id: PersonId
	public let auth: String

	public init(
		content: String,
		recipient_id: PersonId,
		auth: String
	) {
		self.content = content
		self.recipient_id = recipient_id
		self.auth = auth
	}
}

public struct PrivateMessageResponse: APIResponse {
	public let private_message_view: PrivateMessageView

	public init(
		private_message_view: PrivateMessageView
	) {
		self.private_message_view = private_message_view
	}
}
