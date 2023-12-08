import Foundation

public struct CreatePostLikeRequest: APIRequest {
	public typealias Response = PostResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/post/like"

	public let postId: PostId
	public let score: Int

	public init(
		postId: PostId,
		score: Int
	) {
		self.postId = postId
		self.score = score
	}
}
