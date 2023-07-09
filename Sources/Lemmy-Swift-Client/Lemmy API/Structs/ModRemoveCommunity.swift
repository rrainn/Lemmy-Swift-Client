import Foundation

public struct ModRemoveCommunity: Codable, Identifiable, Hashable {
	public let id: Int
	public let mod_person_id: PersonId
	public let community_id: CommunityId
	public let reason: String?
	public let removed: Bool
	public let expires: String?
	public let when_: String

	public init(
		id: Int,
		mod_person_id: PersonId,
		community_id: CommunityId,
		reason: String? = nil,
		removed: Bool,
		expires: String? = nil,
		when_: String
	) {
		self.id = id
		self.mod_person_id = mod_person_id
		self.community_id = community_id
		self.reason = reason
		self.removed = removed
		self.expires = expires
		self.when_ = when_
	}
}
