import Foundation

public struct GetCommunityRequest: APIRequest {
	public typealias Response = GetCommunityResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/community"

	public let auth: String?
	public let id: Int?
	public let name: String?

	public init(auth: String? = nil, id: Int? = nil, name: String? = nil) {
		self.auth = auth
		self.id = id
		self.name = name
	}
}

public struct GetCommunityResponse: APIResponse {
	public let community_view: CommunityView
	public let default_post_language: Int?
	public let discussion_languages: [Int]
	public let moderators: [CommunityModeratorView]
	public let online: Int
	public let site: Site?

	public init(
		community_view: CommunityView,
		default_post_language: Int? = nil,
		discussion_languages: [Int],
		moderators: [CommunityModeratorView],
		online: Int,
		site: Site? = nil
	) {
		self.community_view = community_view
		self.default_post_language = default_post_language
		self.discussion_languages = discussion_languages
		self.moderators = moderators
		self.online = online
		self.site = site
	}
}
