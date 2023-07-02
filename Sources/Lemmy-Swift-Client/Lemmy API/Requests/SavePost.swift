import Foundation

public struct SavePostRequest: APIRequest {
	public typealias Response = PostResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/post/save"

	public let auth: String
	public let post_id: Int
	public let save: Bool

	public init(auth: String, post_id: Int, save: Bool) {
		self.auth = auth
		self.post_id = post_id
		self.save = save
	}
}
