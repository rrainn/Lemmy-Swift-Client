import Foundation

public struct PostReportView: Codable {
	public let community: CommunitySafe
	public let counts: PostAggregates
	public let creator: PersonSafe
	public let creator_banned_from_community: Bool
	public let my_vote: Int?
	public let post: Post
	public let post_creator: PersonSafe
	public let post_report: PostReport
	public let resolver: PersonSafe?

	public init(
		community: CommunitySafe,
		counts: PostAggregates,
		creator: PersonSafe,
		creator_banned_from_community: Bool,
		my_vote: Int? = nil,
		post: Post,
		post_creator: PersonSafe,
		post_report: PostReport,
		resolver: PersonSafe? = nil
	) {
		self.community = community
		self.counts = counts
		self.creator = creator
		self.creator_banned_from_community = creator_banned_from_community
		self.my_vote = my_vote
		self.post = post
		self.post_creator = post_creator
		self.post_report = post_report
		self.resolver = resolver
	}
}
