import Foundation

public struct ModJoinResponse: Codable, Hashable {
	public let joined: Bool

	public init(
		joined: Bool
	) {
		self.joined = joined
	}
}
