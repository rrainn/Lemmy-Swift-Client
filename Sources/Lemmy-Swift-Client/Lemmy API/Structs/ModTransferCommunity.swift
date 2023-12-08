import Foundation

public struct ModTransferCommunity: Codable, Identifiable, Hashable {
	public let id: Int
	public let modPersonId: PersonId
	public let otherPersonId: PersonId
	public let communityId: CommunityId
	public let when: String

	public init(
		id: Int,
		modPersonId: PersonId,
		otherPersonId: PersonId,
		communityId: CommunityId,
		when: String
	) {
		self.id = id
		self.modPersonId = modPersonId
		self.otherPersonId = otherPersonId
		self.communityId = communityId
		self.when = when
	}
}
