import Foundation

public struct CreateCommentRequest: APIRequest {
	public typealias Response = CommentResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/comment"

	public let content: String
	public let post_id: PostId
	public let parent_id: CommentId?
	public let language_id: LanguageId?
	public let form_id: String?
	public let auth: String

	public init(
		content: String,
		post_id: PostId,
		parent_id: CommentId? = nil,
		language_id: LanguageId? = nil,
		form_id: String? = nil,
		auth: String
	) {
		self.content = content
		self.post_id = post_id
		self.parent_id = parent_id
		self.language_id = language_id
		self.form_id = form_id
		self.auth = auth
	}
}

public struct CommentResponse: APIResponse {
	public let comment_view: CommentView
	public let recipient_ids: [LocalUserId]
	public let form_id: String?

	public init(
		comment_view: CommentView,
		recipient_ids: [LocalUserId],
		form_id: String? = nil
	) {
		self.comment_view = comment_view
		self.recipient_ids = recipient_ids
		self.form_id = form_id
	}
}
