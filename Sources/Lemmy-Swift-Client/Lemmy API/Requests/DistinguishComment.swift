import Foundation

public struct DistinguishCommentRequest: APIRequest {
	public typealias Response = CommentResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/comment/distinguish"

	public let comment_id: CommentId?
	public let distinguished: Bool?

	public init(
		comment_id: CommentId? = nil,
		distinguished: Bool? = nil
	) {
		self.comment_id = comment_id
		self.distinguished = distinguished
	}
}
