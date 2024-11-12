import Foundation

public struct ApproveRegistrationApplicationRequest: APIRequest {
	public typealias Response = RegistrationApplicationResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/admin/registration_application/approve"

	public let id: RegistrationApplicationId?
	public let approve: Bool?
	public let deny_reason: String?

	public init(
		id: RegistrationApplicationId? = nil,
		approve: Bool? = nil,
		deny_reason: String? = nil
	) {
		self.id = id
		self.approve = approve
		self.deny_reason = deny_reason
	}
}

public struct RegistrationApplicationResponse: APIResponse {
	public let registration_application: RegistrationApplicationView?

	public init(
		registration_application: RegistrationApplicationView? = nil
	) {
		self.registration_application = registration_application
	}
}
