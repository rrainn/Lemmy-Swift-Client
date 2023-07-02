import Foundation

public struct SaveCommentRequest: APIRequest {
	public typealias Response = CommentResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/comment/save"

	public let auth: String
	public let comment_id: Int
	public let save: Bool

	public init(auth: String, comment_id: Int, save: Bool) {
		self.auth = auth
		self.comment_id = comment_id
		self.save = save
	}
}
