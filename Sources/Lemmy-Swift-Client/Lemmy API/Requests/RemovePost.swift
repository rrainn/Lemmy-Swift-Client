import Foundation

public struct RemovePostRequest: APIRequest {
	public typealias Response = PostResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/post/remove"

	public let post_id: PostId
	public let removed: Bool
	public let reason: String?
	public let auth: String

	public init(
		post_id: PostId,
		removed: Bool,
		reason: String? = nil,
		auth: String
	) {
		self.post_id = post_id
		self.removed = removed
		self.reason = reason
		self.auth = auth
	}
}
