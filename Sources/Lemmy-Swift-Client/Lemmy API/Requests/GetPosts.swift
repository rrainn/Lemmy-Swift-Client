import Foundation

public struct GetPostsRequest: APIRequest {
	public typealias Response = GetPostsResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/post/list"

	public let type: ListingType?
	public let sort: SortType?
	public let page: Int?
	public let limit: Int?
	public let communityId: CommunityId?
	public let communityName: String?
	public let savedOnly: Bool?
	public let likedOnly: Bool?
	public let dislikedOnly: Bool?
	public let pageCursor: PaginationCursor?

	public init(
		type: ListingType? = nil,
		sort: SortType? = nil,
		page: Int? = nil,
		limit: Int? = nil,
		communityId: CommunityId? = nil,
		communityName: String? = nil,
		savedOnly: Bool? = nil,
		likedOnly: Bool? = nil,
		dislikedOnly: Bool? = nil,
		pageCursor: PaginationCursor? = nil
	) {
		self.type = type
		self.sort = sort
		self.page = page
		self.limit = limit
		self.communityId = communityId
		self.communityName = communityName
		self.savedOnly = savedOnly
		self.likedOnly = likedOnly
		self.dislikedOnly = dislikedOnly
		self.pageCursor = pageCursor
	}
}

public struct GetPostsResponse: APIResponse {
	public let posts: [PostView]
	public let nextPage: PaginationCursor?

	public init(
		posts: [PostView],
		nextPage: PaginationCursor? = nil
	) {
		self.posts = posts
		self.nextPage = nextPage
	}
}
