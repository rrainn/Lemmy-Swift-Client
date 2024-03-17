import Foundation

public struct MarkPrivateMessageAsReadRequest: APIRequest {
	public typealias Response = PrivateMessageResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/private_message/mark_as_read"

	public let private_message_id: PrivateMessageId
	public let read: Bool

	public init(
		private_message_id: PrivateMessageId,
		read: Bool
	) {
		self.private_message_id = private_message_id
		self.read = read
	}
}
