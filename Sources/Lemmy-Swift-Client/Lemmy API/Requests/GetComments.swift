import Foundation

public struct GetCommentsRequest: APIRequest {
	public typealias Response = GetCommentsResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/comment/list"

	public let type_: ListingType?
	public let sort: CommentSortType?
	public let max_depth: Int?
	public let page: Int?
	public let limit: Int?
	public let community_id: CommunityId?
	public let community_name: String?
	public let post_id: PostId?
	public let parent_id: CommentId?
	public let saved_only: Bool?
	public let liked_only: Bool?
	public let disliked_only: Bool?

	public init(
		type_: ListingType? = nil,
		sort: CommentSortType? = nil,
		max_depth: Int? = nil,
		page: Int? = nil,
		limit: Int? = nil,
		community_id: CommunityId? = nil,
		community_name: String? = nil,
		post_id: PostId? = nil,
		parent_id: CommentId? = nil,
		saved_only: Bool? = nil,
		liked_only: Bool? = nil,
		disliked_only: Bool? = nil
	) {
		self.type_ = type_
		self.sort = sort
		self.max_depth = max_depth
		self.page = page
		self.limit = limit
		self.community_id = community_id
		self.community_name = community_name
		self.post_id = post_id
		self.parent_id = parent_id
		self.saved_only = saved_only
		self.liked_only = liked_only
		self.disliked_only = disliked_only
	}
}

public struct GetCommentsResponse: APIResponse {
	public let comments: [CommentView]?

	public init(
		comments: [CommentView]? = nil
	) {
		self.comments = comments
	}
}
