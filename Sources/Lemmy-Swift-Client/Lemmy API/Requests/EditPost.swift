import Foundation

public struct EditPostRequest: APIRequest {
	public typealias Response = PostResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/post"

	public let post_id: PostId?
	public let name: String?
	public let url: String?
	public let body: String?
	public let alt_text: String?
	public let nsfw: Bool?
	public let language_id: LanguageId?
	public let custom_thumbnail: String?

	public init(
		post_id: PostId? = nil,
		name: String? = nil,
		url: String? = nil,
		body: String? = nil,
		alt_text: String? = nil,
		nsfw: Bool? = nil,
		language_id: LanguageId? = nil,
		custom_thumbnail: String? = nil
	) {
		self.post_id = post_id
		self.name = name
		self.url = url
		self.body = body
		self.alt_text = alt_text
		self.nsfw = nsfw
		self.language_id = language_id
		self.custom_thumbnail = custom_thumbnail
	}
}
