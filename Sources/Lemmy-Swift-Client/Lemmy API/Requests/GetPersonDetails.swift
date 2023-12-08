import Foundation

public struct GetPersonDetailsRequest: APIRequest {
	public typealias Response = GetPersonDetailsResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/user"

	public let personId: PersonId?
	public let username: String?
	public let sort: SortType?
	public let page: Int?
	public let limit: Int?
	public let communityId: CommunityId?
	public let savedOnly: Bool?

	public init(
		personId: PersonId? = nil,
		username: String? = nil,
		sort: SortType? = nil,
		page: Int? = nil,
		limit: Int? = nil,
		communityId: CommunityId? = nil,
		savedOnly: Bool? = nil
	) {
		self.personId = personId
		self.username = username
		self.sort = sort
		self.page = page
		self.limit = limit
		self.communityId = communityId
		self.savedOnly = savedOnly
	}
}

public struct GetPersonDetailsResponse: APIResponse {
	public let personView: PersonView
	public let comments: [CommentView]
	public let posts: [PostView]
	public let moderates: [CommunityModeratorView]

	public init(
		personView: PersonView,
		comments: [CommentView],
		posts: [PostView],
		moderates: [CommunityModeratorView]
	) {
		self.personView = personView
		self.comments = comments
		self.posts = posts
		self.moderates = moderates
	}
}
