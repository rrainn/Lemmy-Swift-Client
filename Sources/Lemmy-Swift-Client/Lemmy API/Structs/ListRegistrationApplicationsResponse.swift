import Foundation

public struct ListRegistrationApplicationsResponse: Codable, Hashable {
	public let registration_applications: [RegistrationApplicationView]?

	public init(
		registration_applications: [RegistrationApplicationView]? = nil
	) {
		self.registration_applications = registration_applications
	}
}
