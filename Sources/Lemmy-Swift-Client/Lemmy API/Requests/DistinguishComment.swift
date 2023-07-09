import Foundation

public struct DistinguishCommentRequest: APIRequest {
	public typealias Response = CommentResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/comment/distinguish"

	public let comment_id: CommentId
	public let distinguished: Bool
	public let auth: String

	public init(
		comment_id: CommentId,
		distinguished: Bool,
		auth: String
	) {
		self.comment_id = comment_id
		self.distinguished = distinguished
		self.auth = auth
	}
}
