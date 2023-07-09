import Foundation

public struct ModHideCommunity: Codable, Identifiable, Hashable {
	public let id: Int
	public let community_id: CommunityId
	public let mod_person_id: PersonId
	public let when_: String
	public let reason: String?
	public let hidden: Bool

	public init(
		id: Int,
		community_id: CommunityId,
		mod_person_id: PersonId,
		when_: String,
		reason: String? = nil,
		hidden: Bool
	) {
		self.id = id
		self.community_id = community_id
		self.mod_person_id = mod_person_id
		self.when_ = when_
		self.reason = reason
		self.hidden = hidden
	}
}
