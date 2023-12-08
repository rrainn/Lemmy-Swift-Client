import Foundation

public struct DistinguishCommentRequest: APIRequest {
	public typealias Response = CommentResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/comment/distinguish"

	public let commentId: CommentId
	public let distinguished: Bool

	public init(
		commentId: CommentId,
		distinguished: Bool
	) {
		self.commentId = commentId
		self.distinguished = distinguished
	}
}
