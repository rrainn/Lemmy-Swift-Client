import Foundation

public struct CreatePrivateMessageRequest: APIRequest {
	public typealias Response = PrivateMessageResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/private_message"

	public let content: String
	public let recipientId: PersonId

	public init(
		content: String,
		recipientId: PersonId
	) {
		self.content = content
		self.recipientId = recipientId
	}
}

public struct PrivateMessageResponse: APIResponse {
	public let privateMessageView: PrivateMessageView

	public init(
		privateMessageView: PrivateMessageView
	) {
		self.privateMessageView = privateMessageView
	}
}
