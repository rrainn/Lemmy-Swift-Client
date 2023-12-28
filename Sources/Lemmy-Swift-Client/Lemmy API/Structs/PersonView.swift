import Foundation

public struct PersonView: Codable, Hashable {
	public let person: Person
	public let counts: PersonAggregates
	public let isAdmin: Bool

	public init(
		person: Person,
		counts: PersonAggregates,
		isAdmin: Bool
	) {
		self.person = person
		self.counts = counts
		self.isAdmin = isAdmin
	}
}
