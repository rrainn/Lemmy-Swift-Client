import Foundation

public struct LockPostRequest: APIRequest {
	public typealias Response = PostResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/post/lock"

	public let postId: PostId
	public let locked: Bool

	public init(
		postId: PostId,
		locked: Bool
	) {
		self.postId = postId
		self.locked = locked
	}
}
