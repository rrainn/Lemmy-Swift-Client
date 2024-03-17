import Foundation

public struct CreatePostRequest: APIRequest {
	public typealias Response = PostResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/post"

	public let name: String?
	public let community_id: CommunityId?
	public let url: String?
	public let body: String?
	public let honeypot: String?
	public let nsfw: Bool?
	public let language_id: LanguageId?

	public init(
		name: String? = nil,
		community_id: CommunityId? = nil,
		url: String? = nil,
		body: String? = nil,
		honeypot: String? = nil,
		nsfw: Bool? = nil,
		language_id: LanguageId? = nil
	) {
		self.name = name
		self.community_id = community_id
		self.url = url
		self.body = body
		self.honeypot = honeypot
		self.nsfw = nsfw
		self.language_id = language_id
	}
}

public struct PostResponse: APIResponse {
	public let post_view: PostView?

	public init(
		post_view: PostView? = nil
	) {
		self.post_view = post_view
	}
}
