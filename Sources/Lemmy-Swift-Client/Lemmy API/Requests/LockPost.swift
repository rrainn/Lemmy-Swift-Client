import Foundation

public struct LockPostRequest: APIRequest {
	public typealias Response = PostResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/post/lock"

	public let post_id: PostId
	public let locked: Bool
	public let auth: String

	public init(
		post_id: PostId,
		locked: Bool,
		auth: String
	) {
		self.post_id = post_id
		self.locked = locked
		self.auth = auth
	}
}
