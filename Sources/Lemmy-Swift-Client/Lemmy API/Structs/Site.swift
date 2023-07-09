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
	public let actor_id: String
	public let last_refreshed_at: String
	public let inbox_url: String
	public let private_key: String?
	public let public_key: String
	public let instance_id: InstanceId

	public init(
		id: SiteId,
		name: String,
		sidebar: String? = nil,
		published: String,
		updated: String? = nil,
		icon: String? = nil,
		banner: String? = nil,
		description: String? = nil,
		actor_id: String,
		last_refreshed_at: String,
		inbox_url: String,
		private_key: String? = nil,
		public_key: String,
		instance_id: InstanceId
	) {
		self.id = id
		self.name = name
		self.sidebar = sidebar
		self.published = published
		self.updated = updated
		self.icon = icon
		self.banner = banner
		self.description = description
		self.actor_id = actor_id
		self.last_refreshed_at = last_refreshed_at
		self.inbox_url = inbox_url
		self.private_key = private_key
		self.public_key = public_key
		self.instance_id = instance_id
	}
}
