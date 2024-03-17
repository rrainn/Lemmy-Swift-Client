import Foundation

public struct PurgeCommentRequest: APIRequest {
	public typealias Response = SuccessResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/admin/purge/comment"

	public let comment_id: CommentId
	public let reason: String?

	public init(
		comment_id: CommentId,
		reason: String? = nil
	) {
		self.comment_id = comment_id
		self.reason = reason
	}
}
