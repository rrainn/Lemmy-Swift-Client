import Foundation

public struct SavePostRequest: APIRequest {
	public typealias Response = PostResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/post/save"

	public let post_id: PostId
	public let save: Bool
	public let auth: String

	public init(
		post_id: PostId,
		save: Bool,
		auth: String
	) {
		self.post_id = post_id
		self.save = save
		self.auth = auth
	}
}
