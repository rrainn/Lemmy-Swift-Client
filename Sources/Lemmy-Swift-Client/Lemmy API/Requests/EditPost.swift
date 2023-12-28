import Foundation

public struct EditPostRequest: APIRequest {
	public typealias Response = PostResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/post"

	public let postId: PostId
	public let name: String?
	public let url: String?
	public let body: String?
	public let nsfw: Bool?
	public let languageId: LanguageId?

	public init(
		postId: PostId,
		name: String? = nil,
		url: String? = nil,
		body: String? = nil,
		nsfw: Bool? = nil,
		languageId: LanguageId? = nil
	) {
		self.postId = postId
		self.name = name
		self.url = url
		self.body = body
		self.nsfw = nsfw
		self.languageId = languageId
	}
}
