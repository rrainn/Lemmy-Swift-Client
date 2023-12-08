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
	public let communityView: CommunityView
	public let site: Site?
	public let moderators: [CommunityModeratorView]
	public let discussionLanguages: [LanguageId]

	public init(
		communityView: CommunityView,
		site: Site? = nil,
		moderators: [CommunityModeratorView],
		discussionLanguages: [LanguageId]
	) {
		self.communityView = communityView
		self.site = site
		self.moderators = moderators
		self.discussionLanguages = discussionLanguages
	}
}
