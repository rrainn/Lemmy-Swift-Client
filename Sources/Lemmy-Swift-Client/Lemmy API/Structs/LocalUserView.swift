import Foundation

public struct LocalUserView: Codable, Hashable {
	public let localUser: LocalUser
	public let person: Person
	public let counts: PersonAggregates

	public init(
		localUser: LocalUser,
		person: Person,
		counts: PersonAggregates
	) {
		self.localUser = localUser
		self.person = person
		self.counts = counts
	}
}
