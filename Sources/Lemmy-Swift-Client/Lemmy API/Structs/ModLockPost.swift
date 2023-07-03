import Foundation

public struct ModLockPost: Codable, Identifiable, Hashable {
	public let id: Int
	public let locked: Bool?
	public let mod_person_id: Int
	public let post_id: Int
	public let when_: String

	public init(id: Int, locked: Bool? = nil, mod_person_id: Int, post_id: Int, when_: String) {
		self.id = id
		self.locked = locked
		self.mod_person_id = mod_person_id
		self.post_id = post_id
		self.when_ = when_
	}
}
