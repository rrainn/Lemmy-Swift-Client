import Foundation

public struct GetPersonDetailsRequest: APIRequest {
	public typealias Response = GetPersonDetailsResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/user"

	public let person_id: PersonId?
	public let username: String?
	public let sort: SortType?
	public let page: Int?
	public let limit: Int?
	public let community_id: CommunityId?
	public let saved_only: Bool?

	public init(
		person_id: PersonId? = nil,
		username: String? = nil,
		sort: SortType? = nil,
		page: Int? = nil,
		limit: Int? = nil,
		community_id: CommunityId? = nil,
		saved_only: Bool? = nil
	) {
		self.person_id = person_id
		self.username = username
		self.sort = sort
		self.page = page
		self.limit = limit
		self.community_id = community_id
		self.saved_only = saved_only
	}
}

public struct GetPersonDetailsResponse: APIResponse {
	public let person_view: PersonView?
	public let site: Site?
	public let comments: [CommentView]?
	public let posts: [PostView]?
	public let moderates: [CommunityModeratorView]?

	public init(
		person_view: PersonView? = nil,
		site: Site? = nil,
		comments: [CommentView]? = nil,
		posts: [PostView]? = nil,
		moderates: [CommunityModeratorView]? = nil
	) {
		self.person_view = person_view
		self.site = site
		self.comments = comments
		self.posts = posts
		self.moderates = moderates
	}
}
