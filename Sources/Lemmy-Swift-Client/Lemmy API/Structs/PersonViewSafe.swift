import Foundation

public struct PersonViewSafe: Codable {
	public let counts: PersonAggregates
	public let person: Person

	public init(counts: PersonAggregates, person: Person) {
		self.counts = counts
		self.person = person
	}
}
