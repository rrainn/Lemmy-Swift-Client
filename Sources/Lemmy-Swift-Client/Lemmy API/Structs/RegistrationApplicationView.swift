import Foundation

public struct RegistrationApplicationView: Codable {
	public let admin: PersonSafe?
	public let creator: PersonSafe
	public let creator_local_user: LocalUserSettings
	public let registration_application: RegistrationApplication

	public init(
		admin: PersonSafe? = nil,
		creator: PersonSafe,
		creator_local_user: LocalUserSettings,
		registration_application: RegistrationApplication
	) {
		self.admin = admin
		self.creator = creator
		self.creator_local_user = creator_local_user
		self.registration_application = registration_application
	}
}
