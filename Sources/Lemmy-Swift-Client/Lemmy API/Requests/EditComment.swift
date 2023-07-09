import Foundation

public struct EditCommentRequest: APIRequest {
	public typealias Response = CommentResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/comment"

	public let comment_id: CommentId
	public let content: String?
	public let language_id: LanguageId?
	public let form_id: String?
	public let auth: String

	public init(
		comment_id: CommentId,
		content: String? = nil,
		language_id: LanguageId? = nil,
		form_id: String? = nil,
		auth: String
	) {
		self.comment_id = comment_id
		self.content = content
		self.language_id = language_id
		self.form_id = form_id
		self.auth = auth
	}
}
