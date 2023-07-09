import Foundation

public struct LocalUserView: Codable, Hashable {
	public let local_user: LocalUser
	public let person: Person
	public let counts: PersonAggregates

	public init(
		local_user: LocalUser,
		person: Person,
		counts: PersonAggregates
	) {
		self.local_user = local_user
		self.person = person
		self.counts = counts
	}
}
