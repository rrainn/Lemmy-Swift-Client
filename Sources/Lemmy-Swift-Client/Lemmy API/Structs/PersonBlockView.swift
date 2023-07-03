import Foundation

public struct PersonBlockView: Codable {
	public let person: Person
	public let target: Person

	public init(person: Person, target: Person) {
		self.person = person
		self.target = target
	}
}
