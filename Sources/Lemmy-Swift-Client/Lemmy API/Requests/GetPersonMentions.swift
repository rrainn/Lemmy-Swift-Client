import Foundation

public struct GetPersonMentionsRequest: APIRequest {
	public typealias Response = GetPersonMentionsResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/user/mention"

	public let sort: CommentSortType?
	public let page: Int?
	public let limit: Int?
	public let unreadOnly: Bool?

	public init(
		sort: CommentSortType? = nil,
		page: Int? = nil,
		limit: Int? = nil,
		unreadOnly: Bool? = nil
	) {
		self.sort = sort
		self.page = page
		self.limit = limit
		self.unreadOnly = unreadOnly
	}
}

public struct GetPersonMentionsResponse: APIResponse {
	public let mentions: [PersonMentionView]

	public init(
		mentions: [PersonMentionView]
	) {
		self.mentions = mentions
	}
}
