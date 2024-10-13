import Foundation

public struct ListPostLikesRequest: APIRequest {
	public typealias Response = ListPostLikesResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/post/like/list"

	public let post_id: PostId?
	public let page: Int?
	public let limit: Int?

	public init(
		post_id: PostId? = nil,
		page: Int? = nil,
		limit: Int? = nil
	) {
		self.post_id = post_id
		self.page = page
		self.limit = limit
	}
}

public struct ListPostLikesResponse: APIResponse {
	public let post_likes: [VoteView]?

	public init(
		post_likes: [VoteView]? = nil
	) {
		self.post_likes = post_likes
	}
}
