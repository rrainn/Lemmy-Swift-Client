import Foundation

public struct ModAddView: Codable, Hashable {
	public let modAdd: ModAdd
	public let moderator: Person?
	public let moddedPerson: Person

	public init(
		modAdd: ModAdd,
		moderator: Person? = nil,
		moddedPerson: Person
	) {
		self.modAdd = modAdd
		self.moderator = moderator
		self.moddedPerson = moddedPerson
	}
}
