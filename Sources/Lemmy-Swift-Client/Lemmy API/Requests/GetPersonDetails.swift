import Foundation

public struct GetPersonDetailsRequest: APIRequest {
	public typealias Response = GetPersonDetailsResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/user"

	public let auth: String?
	public let community_id: Int?
	public let limit: Int?
	public let page: Int?
	public let person_id: Int?
	public let saved_only: Bool?
	public let sort: SortType?
	/// To get details for a federated user, use `person@instance.tld`.
	public let username: String?

	public init(
		auth: String? = nil,
		community_id: Int? = nil,
		limit: Int? = nil,
		page: Int? = nil,
		person_id: Int? = nil,
		saved_only: Bool? = nil,
		sort: SortType? = nil,
		username: String? = nil
	) {
		self.auth = auth
		self.community_id = community_id
		self.limit = limit
		self.page = page
		self.person_id = person_id
		self.saved_only = saved_only
		self.sort = sort
		self.username = username
	}
}

public struct GetPersonDetailsResponse: APIResponse {
	public let comments: [CommentView]
	public let moderates: [CommunityModeratorView]
	public let person_view: PersonViewSafe
	public let posts: [PostView]

	public init(
		comments: [CommentView],
		moderates: [CommunityModeratorView],
		person_view: PersonViewSafe,
		posts: [PostView]
	) {
		self.comments = comments
		self.moderates = moderates
		self.person_view = person_view
		self.posts = posts
	}
}
