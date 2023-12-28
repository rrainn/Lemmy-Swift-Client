import Foundation

public struct GetCommentsRequest: APIRequest {
	public typealias Response = GetCommentsResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/comment/list"

	public let type: ListingType?
	public let sort: CommentSortType?
	public let maxDepth: Int?
	public let page: Int?
	public let limit: Int?
	public let communityId: CommunityId?
	public let communityName: String?
	public let postId: PostId?
	public let parentId: CommentId?
	public let savedOnly: Bool?
	public let likedOnly: Bool?
	public let dislikedOnly: Bool?

	public init(
		type: ListingType? = nil,
		sort: CommentSortType? = nil,
		maxDepth: Int? = nil,
		page: Int? = nil,
		limit: Int? = nil,
		communityId: CommunityId? = nil,
		communityName: String? = nil,
		postId: PostId? = nil,
		parentId: CommentId? = nil,
		savedOnly: Bool? = nil,
		likedOnly: Bool? = nil,
		dislikedOnly: Bool? = nil
	) {
		self.type = type
		self.sort = sort
		self.maxDepth = maxDepth
		self.page = page
		self.limit = limit
		self.communityId = communityId
		self.communityName = communityName
		self.postId = postId
		self.parentId = parentId
		self.savedOnly = savedOnly
		self.likedOnly = likedOnly
		self.dislikedOnly = dislikedOnly
	}
}

public struct GetCommentsResponse: APIResponse {
	public let comments: [CommentView]

	public init(
		comments: [CommentView]
	) {
		self.comments = comments
	}
}
