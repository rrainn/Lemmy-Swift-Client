import Foundation

public struct DeletePrivateMessageRequest: APIRequest {
	public typealias Response = PrivateMessageResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/private_message/delete"

	public let private_message_id: PrivateMessageId
	public let deleted: Bool
	public let auth: String

	public init(
		private_message_id: PrivateMessageId,
		deleted: Bool,
		auth: String
	) {
		self.private_message_id = private_message_id
		self.deleted = deleted
		self.auth = auth
	}
}
