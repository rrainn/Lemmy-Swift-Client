import Foundation

public struct ListRegistrationApplicationsRequest: APIRequest {
	public typealias Response = ListRegistrationApplicationsResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/admin/registration_application/list"

	public let unread_only: Bool?
	public let page: Int?
	public let limit: Int?

	public init(
		unread_only: Bool? = nil,
		page: Int? = nil,
		limit: Int? = nil
	) {
		self.unread_only = unread_only
		self.page = page
		self.limit = limit
	}
}

public struct ListRegistrationApplicationsResponse: APIResponse {
	public let registration_applications: [RegistrationApplicationView]?

	public init(
		registration_applications: [RegistrationApplicationView]? = nil
	) {
		self.registration_applications = registration_applications
	}
}
