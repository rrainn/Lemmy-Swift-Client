import Foundation

public struct MarkPrivateMessageAsReadRequest: APIRequest {
	public typealias Response = PrivateMessageResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/private_message/mark_as_read"

	public let privateMessageId: PrivateMessageId
	public let read: Bool

	public init(
		privateMessageId: PrivateMessageId,
		read: Bool
	) {
		self.privateMessageId = privateMessageId
		self.read = read
	}
}
