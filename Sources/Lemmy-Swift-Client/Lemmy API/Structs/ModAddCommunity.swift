import Foundation

public struct ModAddCommunity: Codable, Identifiable, Hashable {
	public let community_id: Int
	public let id: Int
	public let mod_person_id: Int
	public let other_person_id: Int
	public let removed: Bool?
	public let when_: String

	public init(
		community_id: Int,
		id: Int,
		mod_person_id: Int,
		other_person_id: Int,
		removed: Bool? = nil,
		when_: String
	) {
		self.community_id = community_id
		self.id = id
		self.mod_person_id = mod_person_id
		self.other_person_id = other_person_id
		self.removed = removed
		self.when_ = when_
	}
}
