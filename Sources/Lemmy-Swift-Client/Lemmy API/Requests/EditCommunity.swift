import Foundation

public struct EditCommunityRequest: APIRequest {
	public typealias Response = CommunityResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/community"

	public let communityId: CommunityId
	public let title: String?
	public let description: String?
	public let icon: String?
	public let banner: String?
	public let nsfw: Bool?
	public let postingRestrictedToMods: Bool?
	public let discussionLanguages: [LanguageId]?

	public init(
		communityId: CommunityId,
		title: String? = nil,
		description: String? = nil,
		icon: String? = nil,
		banner: String? = nil,
		nsfw: Bool? = nil,
		postingRestrictedToMods: Bool? = nil,
		discussionLanguages: [LanguageId]? = nil
	) {
		self.communityId = communityId
		self.title = title
		self.description = description
		self.icon = icon
		self.banner = banner
		self.nsfw = nsfw
		self.postingRestrictedToMods = postingRestrictedToMods
		self.discussionLanguages = discussionLanguages
	}
}
