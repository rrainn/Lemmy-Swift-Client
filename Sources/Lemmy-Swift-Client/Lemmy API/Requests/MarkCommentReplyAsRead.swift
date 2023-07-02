import Foundation

public struct MarkCommentReplyAsReadRequest: APIRequest {
	public typealias Response = CommentResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/comment/mark_as_read"

	public let auth: String
	public let comment_reply_id: Int
	public let read: Bool

	public init(auth: String, comment_reply_id: Int, read: Bool) {
		self.auth = auth
		self.comment_reply_id = comment_reply_id
		self.read = read
	}
}
