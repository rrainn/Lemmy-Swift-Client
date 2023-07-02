import Foundation

public struct CreateCommunityRequest: APIRequest {
	public typealias Response = CommunityResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/community"

	public let auth: String
	public let banner: String?
	public let description: String?
	public let discussion_languages: [Int]?
	public let icon: String?
	public let name: String
	public let nsfw: Bool?
	public let posting_restricted_to_mods: Bool?
	public let title: String

	public init(
		auth: String,
		banner: String? = nil,
		description: String? = nil,
		discussion_languages: [Int]? = nil,
		icon: String? = nil,
		name: String,
		nsfw: Bool? = nil,
		posting_restricted_to_mods: Bool? = nil,
		title: String
	) {
		self.auth = auth
		self.banner = banner
		self.description = description
		self.discussion_languages = discussion_languages
		self.icon = icon
		self.name = name
		self.nsfw = nsfw
		self.posting_restricted_to_mods = posting_restricted_to_mods
		self.title = title
	}
}

public struct CommunityResponse: APIResponse {
	public let community_view: CommunityView
	public let discussion_languages: [Int]

	public init(community_view: CommunityView, discussion_languages: [Int]) {
		self.community_view = community_view
		self.discussion_languages = discussion_languages
	}
}
