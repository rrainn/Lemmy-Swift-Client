import Foundation

public struct ModHideCommunity: Codable, Identifiable, Hashable {
	public let id: Int
	public let communityId: CommunityId
	public let modPersonId: PersonId
	public let when: String
	public let reason: String?
	public let hidden: Bool

	public init(
		id: Int,
		communityId: CommunityId,
		modPersonId: PersonId,
		when: String,
		reason: String? = nil,
		hidden: Bool
	) {
		self.id = id
		self.communityId = communityId
		self.modPersonId = modPersonId
		self.when = when
		self.reason = reason
		self.hidden = hidden
	}
}
