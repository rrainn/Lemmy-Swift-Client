import Foundation

public struct RemoveCommentRequest: APIRequest {
	public typealias Response = CommentResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/comment/remove"

	public let comment_id: CommentId
	public let removed: Bool
	public let reason: String?
	public let auth: String

	public init(
		comment_id: CommentId,
		removed: Bool,
		reason: String? = nil,
		auth: String
	) {
		self.comment_id = comment_id
		self.removed = removed
		self.reason = reason
		self.auth = auth
	}
}
