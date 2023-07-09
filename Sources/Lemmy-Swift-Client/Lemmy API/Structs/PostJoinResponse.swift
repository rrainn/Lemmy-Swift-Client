import Foundation

public struct PostJoinResponse: Codable, Hashable {
	public let joined: Bool

	public init(
		joined: Bool
	) {
		self.joined = joined
	}
}
