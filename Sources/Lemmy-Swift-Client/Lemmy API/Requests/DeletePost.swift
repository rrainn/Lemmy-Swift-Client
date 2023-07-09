import Foundation

public struct DeletePostRequest: APIRequest {
	public typealias Response = PostResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/post/delete"

	public let post_id: PostId
	public let deleted: Bool
	public let auth: String

	public init(
		post_id: PostId,
		deleted: Bool,
		auth: String
	) {
		self.post_id = post_id
		self.deleted = deleted
		self.auth = auth
	}
}
