import Foundation

public struct PostReportView: Codable, Hashable {
	public let postReport: PostReport
	public let post: Post
	public let community: Community
	public let creator: Person
	public let postCreator: Person
	public let creatorBannedFromCommunity: Bool
	public let myVote: Int?
	public let counts: PostAggregates
	public let resolver: Person?

	public init(
		postReport: PostReport,
		post: Post,
		community: Community,
		creator: Person,
		postCreator: Person,
		creatorBannedFromCommunity: Bool,
		myVote: Int? = nil,
		counts: PostAggregates,
		resolver: Person? = nil
	) {
		self.postReport = postReport
		self.post = post
		self.community = community
		self.creator = creator
		self.postCreator = postCreator
		self.creatorBannedFromCommunity = creatorBannedFromCommunity
		self.myVote = myVote
		self.counts = counts
		self.resolver = resolver
	}
}
