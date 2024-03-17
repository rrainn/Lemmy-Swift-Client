import Foundation

public struct ModRemoveCommunity: Codable, Identifiable, Hashable {
	public let id: Int?
	public let mod_person_id: PersonId?
	public let community_id: CommunityId?
	public let reason: String?
	public let removed: Bool?
	public let when_: String?

	public init(
		id: Int? = nil,
		mod_person_id: PersonId? = nil,
		community_id: CommunityId? = nil,
		reason: String? = nil,
		removed: Bool? = nil,
		when_: String? = nil
	) {
		self.id = id
		self.mod_person_id = mod_person_id
		self.community_id = community_id
		self.reason = reason
		self.removed = removed
		self.when_ = when_
	}
}
