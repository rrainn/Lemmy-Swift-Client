import Foundation

public struct MarkCommentReplyAsReadRequest: APIRequest {
	public typealias Response = CommentReplyResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/comment/mark_as_read"

	public let comment_reply_id: CommentReplyId?
	public let read: Bool?

	public init(
		comment_reply_id: CommentReplyId? = nil,
		read: Bool? = nil
	) {
		self.comment_reply_id = comment_reply_id
		self.read = read
	}
}

public struct CommentReplyResponse: APIResponse {
	public let comment_reply_view: CommentReplyView?

	public init(
		comment_reply_view: CommentReplyView? = nil
	) {
		self.comment_reply_view = comment_reply_view
	}
}
