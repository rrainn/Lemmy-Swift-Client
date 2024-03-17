import Foundation

public struct CommunityView: Codable, Hashable {
	public let community: Community?
	public let subscribed: SubscribedType?
	public let blocked: Bool?
	public let counts: CommunityAggregates?

	public init(
		community: Community? = nil,
		subscribed: SubscribedType? = nil,
		blocked: Bool? = nil,
		counts: CommunityAggregates? = nil
	) {
		self.community = community
		self.subscribed = subscribed
		self.blocked = blocked
		self.counts = counts
	}
}
