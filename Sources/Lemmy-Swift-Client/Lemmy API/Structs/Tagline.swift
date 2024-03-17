import Foundation

public struct Tagline: Codable, Identifiable, Hashable {
	public let id: Int?
	public let local_site_id: LocalSiteId?
	public let content: String?
	public let published: String?
	public let updated: String?

	public init(
		id: Int? = nil,
		local_site_id: LocalSiteId? = nil,
		content: String? = nil,
		published: String? = nil,
		updated: String? = nil
	) {
		self.id = id
		self.local_site_id = local_site_id
		self.content = content
		self.published = published
		self.updated = updated
	}
}
