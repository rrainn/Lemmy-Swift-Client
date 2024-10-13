import Foundation

public struct LocalUserVoteDisplayMode: Codable, Hashable {
	public let local_user_id: LocalUserId?
	public let score: Bool?
	public let upvotes: Bool?
	public let downvotes: Bool?
	public let upvote_percentage: Bool?

	public init(
		local_user_id: LocalUserId? = nil,
		score: Bool? = nil,
		upvotes: Bool? = nil,
		downvotes: Bool? = nil,
		upvote_percentage: Bool? = nil
	) {
		self.local_user_id = local_user_id
		self.score = score
		self.upvotes = upvotes
		self.downvotes = downvotes
		self.upvote_percentage = upvote_percentage
	}
}
