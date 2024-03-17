import Foundation

public struct PersonView: Codable, Hashable {
	public let person: Person
	public let counts: PersonAggregates
	public let is_admin: Bool

	public init(
		person: Person,
		counts: PersonAggregates,
		is_admin: Bool
	) {
		self.person = person
		self.counts = counts
		self.is_admin = is_admin
	}
}
