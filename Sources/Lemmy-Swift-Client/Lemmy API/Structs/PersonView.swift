import Foundation

public struct PersonView: Codable, Hashable {
	public let person: Person
	public let counts: PersonAggregates

	public init(
		person: Person,
		counts: PersonAggregates
	) {
		self.person = person
		self.counts = counts
	}
}
