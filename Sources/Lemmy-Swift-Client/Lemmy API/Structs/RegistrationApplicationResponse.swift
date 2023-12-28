import Foundation

public struct RegistrationApplicationResponse: Codable, Hashable {
	public let registrationApplication: RegistrationApplicationView

	public init(
		registrationApplication: RegistrationApplicationView
	) {
		self.registrationApplication = registrationApplication
	}
}
