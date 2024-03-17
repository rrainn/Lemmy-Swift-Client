import Foundation

public struct AdminPurgePersonView: Codable, Hashable {
	public let admin_purge_person: AdminPurgePerson?
	public let admin: Person?

	public init(
		admin_purge_person: AdminPurgePerson? = nil,
		admin: Person? = nil
	) {
		self.admin_purge_person = admin_purge_person
		self.admin = admin
	}
}
