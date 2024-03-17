import Foundation

public struct CreateCommentLikeRequest: APIRequest {
	public typealias Response = CommentResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/comment/like"

	public let comment_id: CommentId?
	public let score: Int?

	public init(
		comment_id: CommentId? = nil,
		score: Int? = nil
	) {
		self.comment_id = comment_id
		self.score = score
	}
}
