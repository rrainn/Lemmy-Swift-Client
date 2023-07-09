import Foundation

public struct CommunityView: Codable, Hashable {
	public let community: Community
	public let subscribed: SubscribedType
	public let blocked: Bool
	public let counts: CommunityAggregates

	public init(
		community: Community,
		subscribed: SubscribedType,
		blocked: Bool,
		counts: CommunityAggregates
	) {
		self.community = community
		self.subscribed = subscribed
		self.blocked = blocked
		self.counts = counts
	}
}
