import Foundation

public struct Tagline: Codable {
	public let content: String
	public let id: Int
	public let local_site_id: Int
	public let published: Date
	public let updated: Date?

	public init(
		content: String,
		id: Int,
		local_site_id: Int,
		published: Date,
		updated: Date? = nil
	) {
		self.content = content
		self.id = id
		self.local_site_id = local_site_id
		self.published = published
		self.updated = updated
	}
}
