import Foundation

public struct EditCommentRequest: APIRequest {
	public typealias Response = CommentResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/comment"

	public let commentId: CommentId
	public let content: String?
	public let languageId: LanguageId?

	public init(
		commentId: CommentId,
		content: String? = nil,
		languageId: LanguageId? = nil
	) {
		self.commentId = commentId
		self.content = content
		self.languageId = languageId
	}
}
