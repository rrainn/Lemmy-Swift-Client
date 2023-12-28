import Foundation

public struct CreatePostRequest: APIRequest {
	public typealias Response = PostResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/post"

	public let name: String
	public let communityId: CommunityId
	public let url: String?
	public let body: String?
	public let honeypot: String?
	public let nsfw: Bool?
	public let languageId: LanguageId?

	public init(
		name: String,
		communityId: CommunityId,
		url: String? = nil,
		body: String? = nil,
		honeypot: String? = nil,
		nsfw: Bool? = nil,
		languageId: LanguageId? = nil
	) {
		self.name = name
		self.communityId = communityId
		self.url = url
		self.body = body
		self.honeypot = honeypot
		self.nsfw = nsfw
		self.languageId = languageId
	}
}

public struct PostResponse: APIResponse {
	public let postView: PostView

	public init(
		postView: PostView
	) {
		self.postView = postView
	}
}
