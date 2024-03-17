import Foundation

public struct GetCommunityRequest: APIRequest {
	public typealias Response = GetCommunityResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/community"

	public let id: CommunityId?
	public let name: String?

	public init(
		id: CommunityId? = nil,
		name: String? = nil
	) {
		self.id = id
		self.name = name
	}
}

public struct GetCommunityResponse: APIResponse {
	public let community_view: CommunityView
	public let site: Site?
	public let moderators: [CommunityModeratorView]
	public let discussion_languages: [LanguageId]

	public init(
		community_view: CommunityView,
		site: Site? = nil,
		moderators: [CommunityModeratorView],
		discussion_languages: [LanguageId]
	) {
		self.community_view = community_view
		self.site = site
		self.moderators = moderators
		self.discussion_languages = discussion_languages
	}
}
