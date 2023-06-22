import Foundation

public struct DeletePostRequest: APIRequest {
	public typealias Response = PostResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/post/delete"

	public let auth: String
	public let deleted: Bool
	public let post_id: Int

	public init(auth: String, deleted: Bool, post_id: Int) {
		self.auth = auth
		self.deleted = deleted
		self.post_id = post_id
	}
}
