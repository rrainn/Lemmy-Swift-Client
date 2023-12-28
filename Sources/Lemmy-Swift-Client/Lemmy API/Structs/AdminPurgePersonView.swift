import Foundation

public struct AdminPurgePersonView: Codable, Hashable {
	public let adminPurgePerson: AdminPurgePerson
	public let admin: Person?

	public init(
		adminPurgePerson: AdminPurgePerson,
		admin: Person? = nil
	) {
		self.adminPurgePerson = adminPurgePerson
		self.admin = admin
	}
}
