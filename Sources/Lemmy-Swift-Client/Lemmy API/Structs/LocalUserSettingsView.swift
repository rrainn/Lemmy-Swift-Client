import Foundation

public struct LocalUserSettingsView: Codable, Hashable {
	public let counts: PersonAggregates
	public let local_user: LocalUserSettings
	public let person: PersonSafe

	public init(counts: PersonAggregates, local_user: LocalUserSettings, person: PersonSafe) {
		self.counts = counts
		self.local_user = local_user
		self.person = person
	}
}
