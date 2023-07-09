import Foundation

public struct SaveCommentRequest: APIRequest {
	public typealias Response = CommentResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/comment/save"

	public let comment_id: CommentId
	public let save: Bool
	public let auth: String

	public init(
		comment_id: CommentId,
		save: Bool,
		auth: String
	) {
		self.comment_id = comment_id
		self.save = save
		self.auth = auth
	}
}
