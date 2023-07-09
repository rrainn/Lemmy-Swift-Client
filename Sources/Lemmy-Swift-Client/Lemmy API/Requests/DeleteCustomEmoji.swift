import Foundation

public struct DeleteCustomEmojiRequest: APIRequest {
	public typealias Response = DeleteCustomEmojiResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/custom_emoji/delete"

	public let id: CustomEmojiId
	public let auth: String

	public init(
		id: CustomEmojiId,
		auth: String
	) {
		self.id = id
		self.auth = auth
	}
}

public struct DeleteCustomEmojiResponse: APIResponse {
	public let id: CustomEmojiId
	public let success: Bool

	public init(
		id: CustomEmojiId,
		success: Bool
	) {
		self.id = id
		self.success = success
	}
}
