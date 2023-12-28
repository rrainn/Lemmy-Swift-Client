import Foundation

public struct CreateCommentRequest: APIRequest {
	public typealias Response = CommentResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/comment"

	public let content: String
	public let postId: PostId
	public let parentId: CommentId?
	public let languageId: LanguageId?

	public init(
		content: String,
		postId: PostId,
		parentId: CommentId? = nil,
		languageId: LanguageId? = nil
	) {
		self.content = content
		self.postId = postId
		self.parentId = parentId
		self.languageId = languageId
	}
}

public struct CommentResponse: APIResponse {
	public let commentView: CommentView
	public let recipientIds: [LocalUserId]

	public init(
		commentView: CommentView,
		recipientIds: [LocalUserId]
	) {
		self.commentView = commentView
		self.recipientIds = recipientIds
	}
}
