import Foundation

public struct DeleteCommentRequest: APIRequest {
	public typealias Response = CommentResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/comment/delete"

	public let commentId: CommentId
	public let deleted: Bool

	public init(
		commentId: CommentId,
		deleted: Bool
	) {
		self.commentId = commentId
		self.deleted = deleted
	}
}
