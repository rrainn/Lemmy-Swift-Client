import Foundation

public struct GetPersonMentionsRequest: APIRequest {
	public typealias Response = GetPersonMentionsResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/user/mention"

	public let sort: CommentSortType?
	public let page: Int?
	public let limit: Int?
	public let unread_only: Bool?
	public let auth: String

	public init(
		sort: CommentSortType? = nil,
		page: Int? = nil,
		limit: Int? = nil,
		unread_only: Bool? = nil,
		auth: String
	) {
		self.sort = sort
		self.page = page
		self.limit = limit
		self.unread_only = unread_only
		self.auth = auth
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
