import Foundation

public struct PurgeCommentRequest: APIRequest {
	public typealias Response = SuccessResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/admin/purge/comment"

	public let commentId: CommentId
	public let reason: String?

	public init(
		commentId: CommentId,
		reason: String? = nil
	) {
		self.commentId = commentId
		self.reason = reason
	}
}
