import Foundation

public struct Tagline: Codable, Identifiable, Hashable {
	public let id: Int
	public let localSiteId: LocalSiteId
	public let content: String
	public let published: String
	public let updated: String?

	public init(
		id: Int,
		localSiteId: LocalSiteId,
		content: String,
		published: String,
		updated: String? = nil
	) {
		self.id = id
		self.localSiteId = localSiteId
		self.content = content
		self.published = published
		self.updated = updated
	}
}
