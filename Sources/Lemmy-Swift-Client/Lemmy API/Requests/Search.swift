import Foundation

public struct SearchRequest: APIRequest {
	public typealias Response = SearchResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/search"

	public let q: String
	public let communityId: CommunityId?
	public let communityName: String?
	public let creatorId: PersonId?
	public let type: SearchType?
	public let sort: SortType?
	public let listingType: ListingType?
	public let page: Int?
	public let limit: Int?

	public init(
		q: String,
		communityId: CommunityId? = nil,
		communityName: String? = nil,
		creatorId: PersonId? = nil,
		type: SearchType? = nil,
		sort: SortType? = nil,
		listingType: ListingType? = nil,
		page: Int? = nil,
		limit: Int? = nil
	) {
		self.q = q
		self.communityId = communityId
		self.communityName = communityName
		self.creatorId = creatorId
		self.type = type
		self.sort = sort
		self.listingType = listingType
		self.page = page
		self.limit = limit
	}
}

public struct SearchResponse: APIResponse {
	public let type: SearchType
	public let comments: [CommentView]
	public let posts: [PostView]
	public let communities: [CommunityView]
	public let users: [PersonView]

	public init(
		type: SearchType,
		comments: [CommentView],
		posts: [PostView],
		communities: [CommunityView],
		users: [PersonView]
	) {
		self.type = type
		self.comments = comments
		self.posts = posts
		self.communities = communities
		self.users = users
	}
}
