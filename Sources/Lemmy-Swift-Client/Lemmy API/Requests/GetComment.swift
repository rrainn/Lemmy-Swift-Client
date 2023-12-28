import Foundation

public struct GetCommentRequest: APIRequest {
	public typealias Response = CommentResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/comment"

	public let id: CommentId

	public init(
		id: CommentId
	) {
		self.id = id
	}
}
