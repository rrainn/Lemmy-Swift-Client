import Foundation

public struct PurgePostRequest: APIRequest {
	public typealias Response = SuccessResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/admin/purge/post"

	public let post_id: PostId
	public let reason: String?

	public init(
		post_id: PostId,
		reason: String? = nil
	) {
		self.post_id = post_id
		self.reason = reason
	}
}
