import Foundation

public struct ListPrivateMessageReports: Codable, Hashable {
	public let page: Int?
	public let limit: Int?
	public let unresolved_only: Bool?

	public init(
		page: Int? = nil,
		limit: Int? = nil,
		unresolved_only: Bool? = nil
	) {
		self.page = page
		self.limit = limit
		self.unresolved_only = unresolved_only
	}
}
