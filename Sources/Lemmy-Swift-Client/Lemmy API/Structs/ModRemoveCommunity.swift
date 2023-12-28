import Foundation

public struct ModRemoveCommunity: Codable, Identifiable, Hashable {
	public let id: Int
	public let modPersonId: PersonId
	public let communityId: CommunityId
	public let reason: String?
	public let removed: Bool
	public let when: String

	public init(
		id: Int,
		modPersonId: PersonId,
		communityId: CommunityId,
		reason: String? = nil,
		removed: Bool,
		when: String
	) {
		self.id = id
		self.modPersonId = modPersonId
		self.communityId = communityId
		self.reason = reason
		self.removed = removed
		self.when = when
	}
}
