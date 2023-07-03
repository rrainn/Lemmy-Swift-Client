import Foundation

public struct Tagline: Codable, Identifiable, Hashable {
	public let content: String
	public let id: Int
	public let local_site_id: Int
	public let published: String
	public let updated: String?

	public init(
		content: String,
		id: Int,
		local_site_id: Int,
		published: String,
		updated: String? = nil
	) {
		self.content = content
		self.id = id
		self.local_site_id = local_site_id
		self.published = published
		self.updated = updated
	}
}
