import Foundation

public struct ListCommentLikesRequest: APIRequest {
	public typealias Response = ListCommentLikesResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/comment/like/list"

	public let comment_id: CommentId?
	public let page: Int?
	public let limit: Int?

	public init(
		comment_id: CommentId? = nil,
		page: Int? = nil,
		limit: Int? = nil
	) {
		self.comment_id = comment_id
		self.page = page
		self.limit = limit
	}
}

public struct ListCommentLikesResponse: APIResponse {
	public let comment_likes: [VoteView]?

	public init(
		comment_likes: [VoteView]? = nil
	) {
		self.comment_likes = comment_likes
	}
}
