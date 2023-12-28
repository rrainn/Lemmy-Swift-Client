import Foundation

public struct SavePostRequest: APIRequest {
	public typealias Response = PostResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/post/save"

	public let postId: PostId
	public let save: Bool

	public init(
		postId: PostId,
		save: Bool
	) {
		self.postId = postId
		self.save = save
	}
}
