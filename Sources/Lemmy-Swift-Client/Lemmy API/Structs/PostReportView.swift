import Foundation

public struct PostReportView: Codable, Hashable {
	public let post_report: PostReport?
	public let post: Post?
	public let community: Community?
	public let creator: Person?
	public let post_creator: Person?
	public let creator_banned_from_community: Bool?
	public let my_vote: Int?
	public let counts: PostAggregates?
	public let resolver: Person?

	public init(
		post_report: PostReport? = nil,
		post: Post? = nil,
		community: Community? = nil,
		creator: Person? = nil,
		post_creator: Person? = nil,
		creator_banned_from_community: Bool? = nil,
		my_vote: Int? = nil,
		counts: PostAggregates? = nil,
		resolver: Person? = nil
	) {
		self.post_report = post_report
		self.post = post
		self.community = community
		self.creator = creator
		self.post_creator = post_creator
		self.creator_banned_from_community = creator_banned_from_community
		self.my_vote = my_vote
		self.counts = counts
		self.resolver = resolver
	}
}
