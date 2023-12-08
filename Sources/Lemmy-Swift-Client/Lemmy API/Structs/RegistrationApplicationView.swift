import Foundation

public struct RegistrationApplicationView: Codable, Hashable {
	public let registrationApplication: RegistrationApplication
	public let creatorLocalUser: LocalUser
	public let creator: Person
	public let admin: Person?

	public init(
		registrationApplication: RegistrationApplication,
		creatorLocalUser: LocalUser,
		creator: Person,
		admin: Person? = nil
	) {
		self.registrationApplication = registrationApplication
		self.creatorLocalUser = creatorLocalUser
		self.creator = creator
		self.admin = admin
	}
}
