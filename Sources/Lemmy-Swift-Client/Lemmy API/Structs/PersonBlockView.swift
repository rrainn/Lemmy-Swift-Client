import Foundation

public struct PersonBlockView: Codable, Hashable {
	public let person: PersonSafe
	public let target: PersonSafe

	public init(person: PersonSafe, target: PersonSafe) {
		self.person = person
		self.target = target
	}
}
