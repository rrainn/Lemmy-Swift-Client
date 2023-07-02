import Foundation

public struct DeleteCommentRequest: APIRequest {
	public typealias Response = CommentResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/comment/delete"

	public let auth: String
	public let comment_id: Int
	public let deleted: Bool

	public init(auth: String, comment_id: Int, deleted: Bool) {
		self.auth = auth
		self.comment_id = comment_id
		self.deleted = deleted
	}
}
