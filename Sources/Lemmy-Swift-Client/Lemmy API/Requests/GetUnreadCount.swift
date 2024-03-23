public struct GetUnreadCountRequest: APIRequest {
	public typealias Response = GetUnreadCountResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/user/unread_count"
	
	public init() {}
}

public struct GetUnreadCountResponse: APIResponse {
	public let replies: Int?
	public let mentions: Int?
	public let private_messages: Int?

	public init(
		replies: Int? = nil,
		mentions: Int? = nil,
		private_messages: Int? = nil
	) {
		self.replies = replies
		self.mentions = mentions
		self.private_messages = private_messages
	}
}
