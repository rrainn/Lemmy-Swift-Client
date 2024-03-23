public struct GetUnreadRegistrationApplicationCountRequest: APIRequest {
	public typealias Response = GetUnreadRegistrationApplicationCountResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/admin/registration_application/count"
	
	public init() {}
}

public struct GetUnreadRegistrationApplicationCountResponse: APIResponse {
	public let registration_applications: Int?

	public init(
		registration_applications: Int? = nil
	) {
		self.registration_applications = registration_applications
	}
}
