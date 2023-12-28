import Foundation

public struct EditPrivateMessageRequest: APIRequest {
	public typealias Response = PrivateMessageResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/private_message"

	public let privateMessageId: PrivateMessageId
	public let content: String

	public init(
		privateMessageId: PrivateMessageId,
		content: String
	) {
		self.privateMessageId = privateMessageId
		self.content = content
	}
}
