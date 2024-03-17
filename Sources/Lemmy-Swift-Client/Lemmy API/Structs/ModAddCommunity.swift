import Foundation

public struct ModAddCommunity: Codable, Identifiable, Hashable {
	public let id: Int?
	public let mod_person_id: PersonId?
	public let other_person_id: PersonId?
	public let community_id: CommunityId?
	public let removed: Bool?
	public let when_: String?

	public init(
		id: Int? = nil,
		mod_person_id: PersonId? = nil,
		other_person_id: PersonId? = nil,
		community_id: CommunityId? = nil,
		removed: Bool? = nil,
		when_: String? = nil
	) {
		self.id = id
		self.mod_person_id = mod_person_id
		self.other_person_id = other_person_id
		self.community_id = community_id
		self.removed = removed
		self.when_ = when_
	}
}
