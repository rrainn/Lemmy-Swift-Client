import Foundation

public struct BannedPersonsResponse: Codable, Hashable {
	public let banned: [PersonView]

	public init(
		banned: [PersonView]
	) {
		self.banned = banned
	}
}
