import Foundation

public struct HidePostRequest: APIRequest {
	public typealias Response = SuccessResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/post/hide"

	public let post_ids: [PostId]?
	public let hide: Bool?

	public init(
		post_ids: [PostId]? = nil,
		hide: Bool? = nil
	) {
		self.post_ids = post_ids
		self.hide = hide
	}
}
