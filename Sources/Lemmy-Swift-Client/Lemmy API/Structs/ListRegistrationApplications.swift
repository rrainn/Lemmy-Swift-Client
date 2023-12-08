import Foundation

public struct ListRegistrationApplications: Codable, Hashable {
	public let unreadOnly: Bool?
	public let page: Int?
	public let limit: Int?

	public init(
		unreadOnly: Bool? = nil,
		page: Int? = nil,
		limit: Int? = nil
	) {
		self.unreadOnly = unreadOnly
		self.page = page
		self.limit = limit
	}
}
