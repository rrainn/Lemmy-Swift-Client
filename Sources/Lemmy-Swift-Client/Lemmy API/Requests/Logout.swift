public struct LogoutRequest: APIRequest {
	public typealias Response = SuccessResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/user/logout"
	
	public init() {}
}
