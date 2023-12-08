import Foundation

public struct CreateCommunityRequest: APIRequest {
	public typealias Response = CommunityResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/community"

	public let name: String
	public let title: String
	public let description: String?
	public let icon: String?
	public let banner: String?
	public let nsfw: Bool?
	public let postingRestrictedToMods: Bool?
	public let discussionLanguages: [LanguageId]?

	public init(
		name: String,
		title: String,
		description: String? = nil,
		icon: String? = nil,
		banner: String? = nil,
		nsfw: Bool? = nil,
		postingRestrictedToMods: Bool? = nil,
		discussionLanguages: [LanguageId]? = nil
	) {
		self.name = name
		self.title = title
		self.description = description
		self.icon = icon
		self.banner = banner
		self.nsfw = nsfw
		self.postingRestrictedToMods = postingRestrictedToMods
		self.discussionLanguages = discussionLanguages
	}
}

public struct CommunityResponse: APIResponse {
	public let communityView: CommunityView
	public let discussionLanguages: [LanguageId]

	public init(
		communityView: CommunityView,
		discussionLanguages: [LanguageId]
	) {
		self.communityView = communityView
		self.discussionLanguages = discussionLanguages
	}
}
