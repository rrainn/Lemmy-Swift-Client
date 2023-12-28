import Foundation

public struct ModBan: Codable, Identifiable, Hashable {
	public let id: Int
	public let modPersonId: PersonId
	public let otherPersonId: PersonId
	public let reason: String?
	public let banned: Bool
	public let expires: String?
	public let when: String

	public init(
		id: Int,
		modPersonId: PersonId,
		otherPersonId: PersonId,
		reason: String? = nil,
		banned: Bool,
		expires: String? = nil,
		when: String
	) {
		self.id = id
		self.modPersonId = modPersonId
		self.otherPersonId = otherPersonId
		self.reason = reason
		self.banned = banned
		self.expires = expires
		self.when = when
	}
}
