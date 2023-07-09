import Foundation

public struct DeleteCommentRequest: APIRequest {
	public typealias Response = CommentResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/comment/delete"

	public let comment_id: CommentId
	public let deleted: Bool
	public let auth: String

	public init(
		comment_id: CommentId,
		deleted: Bool,
		auth: String
	) {
		self.comment_id = comment_id
		self.deleted = deleted
		self.auth = auth
	}
}
