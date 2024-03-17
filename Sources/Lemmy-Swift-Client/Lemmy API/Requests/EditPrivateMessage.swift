import Foundation

public struct EditPrivateMessageRequest: APIRequest {
	public typealias Response = PrivateMessageResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/private_message"

	public let private_message_id: PrivateMessageId
	public let content: String

	public init(
		private_message_id: PrivateMessageId,
		content: String
	) {
		self.private_message_id = private_message_id
		self.content = content
	}
}
