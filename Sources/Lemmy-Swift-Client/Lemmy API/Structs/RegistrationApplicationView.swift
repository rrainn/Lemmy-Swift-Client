import Foundation

public struct RegistrationApplicationView: Codable, Hashable {
	public let registration_application: RegistrationApplication
	public let creator_local_user: LocalUser
	public let creator: Person
	public let admin: Person?

	public init(
		registration_application: RegistrationApplication,
		creator_local_user: LocalUser,
		creator: Person,
		admin: Person? = nil
	) {
		self.registration_application = registration_application
		self.creator_local_user = creator_local_user
		self.creator = creator
		self.admin = admin
	}
}
