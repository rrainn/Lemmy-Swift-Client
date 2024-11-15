import Foundation

public struct MarkPostAsReadRequest: APIRequest {
	public typealias Response = SuccessResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/post/mark_as_read"

	public let post_ids: [PostId]?
	public let read: Bool?

	public init(
		post_ids: [PostId]? = nil,
		read: Bool? = nil
	) {
		self.post_ids = post_ids
		self.read = read
	}
}
