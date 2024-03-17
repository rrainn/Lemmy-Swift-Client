import Foundation

public struct DeleteCommentRequest: APIRequest {
	public typealias Response = CommentResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/comment/delete"

	public let comment_id: CommentId
	public let deleted: Bool

	public init(
		comment_id: CommentId,
		deleted: Bool
	) {
		self.comment_id = comment_id
		self.deleted = deleted
	}
}
