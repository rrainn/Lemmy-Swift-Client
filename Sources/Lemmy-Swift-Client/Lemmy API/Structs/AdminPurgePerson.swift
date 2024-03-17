import Foundation

public struct AdminPurgePerson: Codable, Identifiable, Hashable {
	public let id: Int?
	public let admin_person_id: PersonId?
	public let reason: String?
	public let when_: String?

	public init(
		id: Int? = nil,
		admin_person_id: PersonId? = nil,
		reason: String? = nil,
		when_: String? = nil
	) {
		self.id = id
		self.admin_person_id = admin_person_id
		self.reason = reason
		self.when_ = when_
	}
}
