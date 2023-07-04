import Foundation

public struct RegistrationApplicationView: Codable, Hashable {
  public let admin: Person?
  public let creator: Person
  public let creator_local_user: LocalUser
  public let registration_application: RegistrationApplication

  public init(
    admin: Person? = nil,
    creator: Person,
    creator_local_user: LocalUser,
    registration_application: RegistrationApplication
  ) {
    self.admin = admin
    self.creator = creator
    self.creator_local_user = creator_local_user
    self.registration_application = registration_application
  }
}
