import Foundation

public struct LocalUserView: Codable, Hashable {
	public let local_user: LocalUser?
	public let local_user_vote_display_mode: LocalUserVoteDisplayMode?
	public let person: Person?
	public let counts: PersonAggregates?

	public init(
		local_user: LocalUser? = nil,
		local_user_vote_display_mode: LocalUserVoteDisplayMode? = nil,
		person: Person? = nil,
		counts: PersonAggregates? = nil
	) {
		self.local_user = local_user
		self.local_user_vote_display_mode = local_user_vote_display_mode
		self.person = person
		self.counts = counts
	}
}
