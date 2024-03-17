import Foundation

public struct GetRepliesRequest: APIRequest {
	public typealias Response = GetRepliesResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/user/replies"

	public let sort: CommentSortType?
	public let page: Int?
	public let limit: Int?
	public let unread_only: Bool?

	public init(
		sort: CommentSortType? = nil,
		page: Int? = nil,
		limit: Int? = nil,
		unread_only: Bool? = nil
	) {
		self.sort = sort
		self.page = page
		self.limit = limit
		self.unread_only = unread_only
	}
}

public struct GetRepliesResponse: APIResponse {
	public let replies: [CommentReplyView]

	public init(
		replies: [CommentReplyView]
	) {
		self.replies = replies
	}
}
