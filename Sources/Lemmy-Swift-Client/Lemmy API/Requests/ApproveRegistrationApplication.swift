import Foundation

public struct ApproveRegistrationApplicationRequest: APIRequest {
	public typealias Response = RegistrationApplicationResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/admin/registration_application/approve"

	public let approve: Bool
	public let auth: String
	public let deny_reason: String?
	public let id: Int
}

public struct RegistrationApplicationResponse: APIResponse {
	public let registration_application: RegistrationApplicationView

	public init(registration_application: RegistrationApplicationView) {
		self.registration_application = registration_application
	}
}
