import Foundation

public struct ModAddView: Codable, Hashable {
	public let mod_add: ModAdd?
	public let moderator: Person?
	public let modded_person: Person?

	public init(
		mod_add: ModAdd? = nil,
		moderator: Person? = nil,
		modded_person: Person? = nil
	) {
		self.mod_add = mod_add
		self.moderator = moderator
		self.modded_person = modded_person
	}
}
