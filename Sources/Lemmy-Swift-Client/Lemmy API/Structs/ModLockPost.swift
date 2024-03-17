import Foundation

public struct ModLockPost: Codable, Identifiable, Hashable {
	public let id: Int?
	public let mod_person_id: PersonId?
	public let post_id: PostId?
	public let locked: Bool?
	public let when_: String?

	public init(
		id: Int? = nil,
		mod_person_id: PersonId? = nil,
		post_id: PostId? = nil,
		locked: Bool? = nil,
		when_: String? = nil
	) {
		self.id = id
		self.mod_person_id = mod_person_id
		self.post_id = post_id
		self.locked = locked
		self.when_ = when_
	}
}
