import Foundation

public struct ListRegistrationApplicationsResponse: Codable, Hashable {
	public let registrationApplications: [RegistrationApplicationView]

	public init(
		registrationApplications: [RegistrationApplicationView]
	) {
		self.registrationApplications = registrationApplications
	}
}
