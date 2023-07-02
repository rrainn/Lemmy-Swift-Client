import Foundation

public struct RemovePostRequest: APIRequest {
	public typealias Response = PostResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/post/remove"

	public let auth: String
	public let post_id: Int
	public let reason: String?
	public let removed: Bool

	public init(auth: String, post_id: Int, reason: String? = nil, removed: Bool) {
		self.auth = auth
		self.post_id = post_id
		self.reason = reason
		self.removed = removed
	}
}
