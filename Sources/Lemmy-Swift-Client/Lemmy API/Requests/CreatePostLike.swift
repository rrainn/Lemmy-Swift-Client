import Foundation

public struct CreatePostLikeRequest: APIRequest {
	public typealias Response = PostResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/post/like"

	public let post_id: PostId
	public let score: Int
	public let auth: String

	public init(
		post_id: PostId,
		score: Int,
		auth: String
	) {
		self.post_id = post_id
		self.score = score
		self.auth = auth
	}
}
