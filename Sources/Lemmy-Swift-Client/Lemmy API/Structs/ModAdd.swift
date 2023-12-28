import Foundation

public struct ModAdd: Codable, Identifiable, Hashable {
	public let id: Int
	public let modPersonId: PersonId
	public let otherPersonId: PersonId
	public let removed: Bool
	public let when: String

	public init(
		id: Int,
		modPersonId: PersonId,
		otherPersonId: PersonId,
		removed: Bool,
		when: String
	) {
		self.id = id
		self.modPersonId = modPersonId
		self.otherPersonId = otherPersonId
		self.removed = removed
		self.when = when
	}
}
