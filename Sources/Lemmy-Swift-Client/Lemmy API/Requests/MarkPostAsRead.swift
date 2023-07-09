import Foundation

public struct MarkPostAsReadRequest: APIRequest {
	public typealias Response = PostResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/post/mark_as_read"

	public let post_id: PostId
	public let read: Bool
	public let auth: String

	public init(
		post_id: PostId,
		read: Bool,
		auth: String
	) {
		self.post_id = post_id
		self.read = read
		self.auth = auth
	}
}
