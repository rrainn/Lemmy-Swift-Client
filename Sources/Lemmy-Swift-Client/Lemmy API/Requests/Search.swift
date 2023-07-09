import Foundation

public struct SearchRequest: APIRequest {
	public typealias Response = SearchResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/search"

	public let q: String
	public let community_id: CommunityId?
	public let community_name: String?
	public let creator_id: PersonId?
	public let type_: SearchType?
	public let sort: SortType?
	public let listing_type: ListingType?
	public let page: Int?
	public let limit: Int?
	public let auth: String?

	public init(
		q: String,
		community_id: CommunityId? = nil,
		community_name: String? = nil,
		creator_id: PersonId? = nil,
		type_: SearchType? = nil,
		sort: SortType? = nil,
		listing_type: ListingType? = nil,
		page: Int? = nil,
		limit: Int? = nil,
		auth: String? = nil
	) {
		self.q = q
		self.community_id = community_id
		self.community_name = community_name
		self.creator_id = creator_id
		self.type_ = type_
		self.sort = sort
		self.listing_type = listing_type
		self.page = page
		self.limit = limit
		self.auth = auth
	}
}

public struct SearchResponse: APIResponse {
	public let type_: SearchType
	public let comments: [CommentView]
	public let posts: [PostView]
	public let communities: [CommunityView]
	public let users: [PersonView]

	public init(
		type_: SearchType,
		comments: [CommentView],
		posts: [PostView],
		communities: [CommunityView],
		users: [PersonView]
	) {
		self.type_ = type_
		self.comments = comments
		self.posts = posts
		self.communities = communities
		self.users = users
	}
}
