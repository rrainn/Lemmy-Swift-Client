import Foundation

public struct CommentReportView: Codable, Hashable {
	public let comment_report: CommentReport
	public let comment: Comment
	public let post: Post
	public let community: Community
	public let creator: Person
	public let comment_creator: Person
	public let counts: CommentAggregates
	public let creator_banned_from_community: Bool
	public let my_vote: Int?
	public let resolver: Person?

	public init(
		comment_report: CommentReport,
		comment: Comment,
		post: Post,
		community: Community,
		creator: Person,
		comment_creator: Person,
		counts: CommentAggregates,
		creator_banned_from_community: Bool,
		my_vote: Int? = nil,
		resolver: Person? = nil
	) {
		self.comment_report = comment_report
		self.comment = comment
		self.post = post
		self.community = community
		self.creator = creator
		self.comment_creator = comment_creator
		self.counts = counts
		self.creator_banned_from_community = creator_banned_from_community
		self.my_vote = my_vote
		self.resolver = resolver
	}
}
