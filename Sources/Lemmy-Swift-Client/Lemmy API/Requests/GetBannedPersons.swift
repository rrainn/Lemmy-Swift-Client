public struct GetBannedPersonsRequest: APIRequest {
	public typealias Response = BannedPersonsResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/user/banned"
	
	public init() {}
}

public struct BannedPersonsResponse: APIResponse {
	public let banned: [PersonView]?

	public init(
		banned: [PersonView]? = nil
	) {
		self.banned = banned
	}
}
