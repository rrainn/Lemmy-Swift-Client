public struct ValidateAuthRequest: APIRequest {
	public typealias Response = SuccessResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/user/validate_auth"
	
	public init() {}
}
