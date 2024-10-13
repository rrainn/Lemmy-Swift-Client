import Foundation

public struct LocalSiteUrlBlocklist: Codable, Identifiable, Hashable {
	public let id: Int?
	public let url: String?
	public let published: String?
	public let updated: String?

	public init(
		id: Int? = nil,
		url: String? = nil,
		published: String? = nil,
		updated: String? = nil
	) {
		self.id = id
		self.url = url
		self.published = published
		self.updated = updated
	}
}
