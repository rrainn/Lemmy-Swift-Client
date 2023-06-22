import Foundation

public struct CommunityView: Codable {
	public let blocked: Bool
	public let community: CommunitySafe
	public let counts: CommunityAggregates
	public let subscribed: SubscribedType

	public init(
		blocked: Bool,
		community: CommunitySafe,
		counts: CommunityAggregates,
		subscribed: SubscribedType
	) {
		self.blocked = blocked
		self.community = community
		self.counts = counts
		self.subscribed = subscribed
	}
}
