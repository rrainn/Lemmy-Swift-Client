import Foundation

public struct ListPrivateMessageReports: Codable, Hashable {
	public let page: Int?
	public let limit: Int?
	public let unresolvedOnly: Bool?

	public init(
		page: Int? = nil,
		limit: Int? = nil,
		unresolvedOnly: Bool? = nil
	) {
		self.page = page
		self.limit = limit
		self.unresolvedOnly = unresolvedOnly
	}
}
