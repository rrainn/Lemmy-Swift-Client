import Foundation

public struct DeletePostRequest: APIRequest {
	public typealias Response = PostResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/post/delete"

	public let postId: PostId
	public let deleted: Bool

	public init(
		postId: PostId,
		deleted: Bool
	) {
		self.postId = postId
		self.deleted = deleted
	}
}
