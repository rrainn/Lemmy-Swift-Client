import Foundation

public struct SaveCommentRequest: APIRequest {
	public typealias Response = CommentResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/comment/save"

	public let commentId: CommentId
	public let save: Bool

	public init(
		commentId: CommentId,
		save: Bool
	) {
		self.commentId = commentId
		self.save = save
	}
}
