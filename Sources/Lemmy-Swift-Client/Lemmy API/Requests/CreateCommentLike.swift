import Foundation

public struct CreateCommentLikeRequest: APIRequest {
	public typealias Response = CommentResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/comment/like"

	public let commentId: CommentId
	public let score: Int

	public init(
		commentId: CommentId,
		score: Int
	) {
		self.commentId = commentId
		self.score = score
	}
}
