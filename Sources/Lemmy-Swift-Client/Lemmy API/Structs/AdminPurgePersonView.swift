import Foundation

public struct AdminPurgePersonView: Codable {
	public let admin: PersonSafe?
	public let admin_purge_person: AdminPurgePerson

	public init(admin: PersonSafe? = nil, admin_purge_person: AdminPurgePerson) {
		self.admin = admin
		self.admin_purge_person = admin_purge_person
	}
}
