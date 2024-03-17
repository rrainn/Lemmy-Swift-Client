import Foundation

public struct DeleteCustomEmojiRequest: APIRequest {
	public typealias Response = SuccessResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/custom_emoji/delete"

	public let id: CustomEmojiId?

	public init(
		id: CustomEmojiId? = nil
	) {
		self.id = id
	}
}
