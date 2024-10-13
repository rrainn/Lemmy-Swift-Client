import Foundation

public struct CreateCommunityRequest: APIRequest {
	public typealias Response = CommunityResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/community"

	public let name: String?
	public let title: String?
	public let description: String?
	public let icon: String?
	public let banner: String?
	public let nsfw: Bool?
	public let posting_restricted_to_mods: Bool?
	public let discussion_languages: [LanguageId]?
	public let visibility: CommunityVisibility?

	public init(
		name: String? = nil,
		title: String? = nil,
		description: String? = nil,
		icon: String? = nil,
		banner: String? = nil,
		nsfw: Bool? = nil,
		posting_restricted_to_mods: Bool? = nil,
		discussion_languages: [LanguageId]? = nil,
		visibility: CommunityVisibility? = nil
	) {
		self.name = name
		self.title = title
		self.description = description
		self.icon = icon
		self.banner = banner
		self.nsfw = nsfw
		self.posting_restricted_to_mods = posting_restricted_to_mods
		self.discussion_languages = discussion_languages
		self.visibility = visibility
	}
}

public struct CommunityResponse: APIResponse {
	public let community_view: CommunityView?
	public let discussion_languages: [LanguageId]?

	public init(
		community_view: CommunityView? = nil,
		discussion_languages: [LanguageId]? = nil
	) {
		self.community_view = community_view
		self.discussion_languages = discussion_languages
	}
}
