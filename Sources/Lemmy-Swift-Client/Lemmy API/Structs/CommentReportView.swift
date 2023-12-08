import Foundation

public struct CommentReportView: Codable, Hashable {
	public let commentReport: CommentReport
	public let comment: Comment
	public let post: Post
	public let community: Community
	public let creator: Person
	public let commentCreator: Person
	public let counts: CommentAggregates
	public let creatorBannedFromCommunity: Bool
	public let myVote: Int?
	public let resolver: Person?

	public init(
		commentReport: CommentReport,
		comment: Comment,
		post: Post,
		community: Community,
		creator: Person,
		commentCreator: Person,
		counts: CommentAggregates,
		creatorBannedFromCommunity: Bool,
		myVote: Int? = nil,
		resolver: Person? = nil
	) {
		self.commentReport = commentReport
		self.comment = comment
		self.post = post
		self.community = community
		self.creator = creator
		self.commentCreator = commentCreator
		self.counts = counts
		self.creatorBannedFromCommunity = creatorBannedFromCommunity
		self.myVote = myVote
		self.resolver = resolver
	}
}
