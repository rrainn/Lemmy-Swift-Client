import Foundation

public struct GetUnreadRegistrationApplicationCountResponse: Codable, Hashable {
	public let registrationApplications: Int

	public init(
		registrationApplications: Int
	) {
		self.registrationApplications = registrationApplications
	}
}
