import Foundation

public struct DeletePrivateMessageRequest: APIRequest {
	public typealias Response = PrivateMessageResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/private_message/delete"

	public let privateMessageId: PrivateMessageId
	public let deleted: Bool

	public init(
		privateMessageId: PrivateMessageId,
		deleted: Bool
	) {
		self.privateMessageId = privateMessageId
		self.deleted = deleted
	}
}
