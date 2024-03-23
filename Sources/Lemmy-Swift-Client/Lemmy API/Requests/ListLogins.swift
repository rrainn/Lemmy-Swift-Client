public struct ListLoginsRequest: APIRequest {
	public typealias Response = LoginToken[]

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/user/list_logins"
	
	public init() {}
}
