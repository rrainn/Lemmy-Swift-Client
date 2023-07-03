import Foundation

public struct CommentReportView: Codable, Hashable {
	public let comment: Comment
	public let comment_creator: PersonSafe
	public let comment_report: CommentReport
	public let community: CommunitySafe
	public let counts: CommentAggregates
	public let creator: PersonSafe
	public let creator_banned_from_community: Bool
	public let my_vote: Int?
	public let post: Post
	public let resolver: PersonSafe?

	public init(
		comment: Comment,
		comment_creator: PersonSafe,
		comment_report: CommentReport,
		community: CommunitySafe,
		counts: CommentAggregates,
		creator: PersonSafe,
		creator_banned_from_community: Bool,
		my_vote: Int? = nil,
		post: Post,
		resolver: PersonSafe? = nil
	) {
		self.comment = comment
		self.comment_creator = comment_creator
		self.comment_report = comment_report
		self.community = community
		self.counts = counts
		self.creator = creator
		self.creator_banned_from_community = creator_banned_from_community
		self.my_vote = my_vote
		self.post = post
		self.resolver = resolver
	}
}
