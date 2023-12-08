import Foundation

public struct PurgePostRequest: APIRequest {
	public typealias Response = SuccessResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/admin/purge/post"

	public let postId: PostId
	public let reason: String?

	public init(
		postId: PostId,
		reason: String? = nil
	) {
		self.postId = postId
		self.reason = reason
	}
}
