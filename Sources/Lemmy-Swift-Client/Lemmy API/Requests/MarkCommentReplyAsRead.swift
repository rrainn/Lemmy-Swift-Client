import Foundation

public struct MarkCommentReplyAsReadRequest: APIRequest {
	public typealias Response = CommentReplyResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/comment/mark_as_read"

	public let commentReplyId: CommentReplyId
	public let read: Bool

	public init(
		commentReplyId: CommentReplyId,
		read: Bool
	) {
		self.commentReplyId = commentReplyId
		self.read = read
	}
}

public struct CommentReplyResponse: APIResponse {
	public let commentReplyView: CommentReplyView

	public init(
		commentReplyView: CommentReplyView
	) {
		self.commentReplyView = commentReplyView
	}
}
