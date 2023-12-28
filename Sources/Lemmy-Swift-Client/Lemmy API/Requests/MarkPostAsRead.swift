import Foundation

public struct MarkPostAsReadRequest: APIRequest {
	public typealias Response = SuccessResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/post/mark_as_read"

	public let postId: PostId?
	public let postIds: [PostId]?
	public let read: Bool

	public init(
		postId: PostId? = nil,
		postIds: [PostId]? = nil,
		read: Bool
	) {
		self.postId = postId
		self.postIds = postIds
		self.read = read
	}
}
