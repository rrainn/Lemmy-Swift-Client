import Foundation

public struct RemoveCommentRequest: APIRequest {
	public typealias Response = CommentResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/comment/remove"

	public let commentId: CommentId
	public let removed: Bool
	public let reason: String?

	public init(
		commentId: CommentId,
		removed: Bool,
		reason: String? = nil
	) {
		self.commentId = commentId
		self.removed = removed
		self.reason = reason
	}
}
