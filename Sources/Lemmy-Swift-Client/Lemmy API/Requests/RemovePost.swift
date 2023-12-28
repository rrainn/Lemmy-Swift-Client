import Foundation

public struct RemovePostRequest: APIRequest {
	public typealias Response = PostResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/post/remove"

	public let postId: PostId
	public let removed: Bool
	public let reason: String?

	public init(
		postId: PostId,
		removed: Bool,
		reason: String? = nil
	) {
		self.postId = postId
		self.removed = removed
		self.reason = reason
	}
}
