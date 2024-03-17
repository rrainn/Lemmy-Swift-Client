import Foundation

public struct GetUnreadRegistrationApplicationCountResponse: Codable, Hashable {
	public let registration_applications: Int?

	public init(
		registration_applications: Int? = nil
	) {
		self.registration_applications = registration_applications
	}
}
