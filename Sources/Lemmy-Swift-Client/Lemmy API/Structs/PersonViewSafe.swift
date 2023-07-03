import Foundation

public struct PersonViewSafe: Codable, Hashable {
	public let counts: PersonAggregates
	public let person: PersonSafe

	public init(counts: PersonAggregates, person: PersonSafe) {
		self.counts = counts
		self.person = person
	}
}
