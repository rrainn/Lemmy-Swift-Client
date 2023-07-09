import Foundation

public struct GetCommentRequest: APIRequest {
	public typealias Response = CommentResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/comment"

	public let id: CommentId
	public let auth: String?

	public init(
		id: CommentId,
		auth: String? = nil
	) {
		self.id = id
		self.auth = auth
	}
}
