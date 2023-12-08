import Foundation

public struct Site: Codable, Identifiable, Hashable {
	public let id: SiteId
	public let name: String
	public let sidebar: String?
	public let published: String
	public let updated: String?
	public let icon: String?
	public let banner: String?
	public let description: String?
	public let actorId: String
	public let lastRefreshedAt: String
	public let inboxUrl: String
	public let privateKey: String?
	public let publicKey: String
	public let instanceId: InstanceId

	public init(
		id: SiteId,
		name: String,
		sidebar: String? = nil,
		published: String,
		updated: String? = nil,
		icon: String? = nil,
		banner: String? = nil,
		description: String? = nil,
		actorId: String,
		lastRefreshedAt: String,
		inboxUrl: String,
		privateKey: String? = nil,
		publicKey: String,
		instanceId: InstanceId
	) {
		self.id = id
		self.name = name
		self.sidebar = sidebar
		self.published = published
		self.updated = updated
		self.icon = icon
		self.banner = banner
		self.description = description
		self.actorId = actorId
		self.lastRefreshedAt = lastRefreshedAt
		self.inboxUrl = inboxUrl
		self.privateKey = privateKey
		self.publicKey = publicKey
		self.instanceId = instanceId
	}
}
