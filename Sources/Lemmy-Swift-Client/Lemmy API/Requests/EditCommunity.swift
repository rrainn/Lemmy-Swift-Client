import Foundation

public struct EditCommunityRequest: APIRequest {
	public typealias Response = CommunityResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/community"

	public let community_id: CommunityId?
	public let title: String?
	public let description: String?
	public let icon: String?
	public let banner: String?
	public let nsfw: Bool?
	public let posting_restricted_to_mods: Bool?
	public let discussion_languages: [LanguageId]?

	public init(
		community_id: CommunityId? = nil,
		title: String? = nil,
		description: String? = nil,
		icon: String? = nil,
		banner: String? = nil,
		nsfw: Bool? = nil,
		posting_restricted_to_mods: Bool? = nil,
		discussion_languages: [LanguageId]? = nil
	) {
		self.community_id = community_id
		self.title = title
		self.description = description
		self.icon = icon
		self.banner = banner
		self.nsfw = nsfw
		self.posting_restricted_to_mods = posting_restricted_to_mods
		self.discussion_languages = discussion_languages
	}
}
