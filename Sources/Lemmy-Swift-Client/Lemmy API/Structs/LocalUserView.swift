import Foundation

public struct LocalUserView: Codable {
	public let counts: PersonAggregates
	public let local_user: LocalUser
	public let person: Person

	public init(counts: PersonAggregates, local_user: LocalUser, person: Person) {
		self.counts = counts
		self.local_user = local_user
		self.person = person
	}
}
