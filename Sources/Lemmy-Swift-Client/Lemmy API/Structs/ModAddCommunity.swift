import Foundation

public struct ModAddCommunity: Codable, Identifiable, Hashable {
	public let id: Int
	public let modPersonId: PersonId
	public let otherPersonId: PersonId
	public let communityId: CommunityId
	public let removed: Bool
	public let when: String

	public init(
		id: Int,
		modPersonId: PersonId,
		otherPersonId: PersonId,
		communityId: CommunityId,
		removed: Bool,
		when: String
	) {
		self.id = id
		self.modPersonId = modPersonId
		self.otherPersonId = otherPersonId
		self.communityId = communityId
		self.removed = removed
		self.when = when
	}
}
