import Foundation

public struct PurgeCommentRequest: APIRequest {
	public typealias Response = PurgeItemResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/admin/purge/comment"

	public let comment_id: CommentId
	public let reason: String?
	public let auth: String

	public init(
		comment_id: CommentId,
		reason: String? = nil,
		auth: String
	) {
		self.comment_id = comment_id
		self.reason = reason
		self.auth = auth
	}
}
