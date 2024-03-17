import Foundation

public struct ListRegistrationApplications: Codable, Hashable {
	public let unread_only: Bool?
	public let page: Int?
	public let limit: Int?

	public init(
		unread_only: Bool? = nil,
		page: Int? = nil,
		limit: Int? = nil
	) {
		self.unread_only = unread_only
		self.page = page
		self.limit = limit
	}
}
