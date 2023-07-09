import Foundation

public struct Community: Codable, Identifiable, Hashable {
	public let id: CommunityId
	public let name: String
	public let title: String
	public let description: String?
	public let removed: Bool
	public let published: String
	public let updated: String?
	public let deleted: Bool
	public let nsfw: Bool
	public let actor_id: String
	public let local: Bool
	public let icon: String?
	public let banner: String?
	public let followers_url: String
	public let inbox_url: String
	public let hidden: Bool
	public let posting_restricted_to_mods: Bool
	public let instance_id: InstanceId

	public init(
		id: CommunityId,
		name: String,
		title: String,
		description: String? = nil,
		removed: Bool,
		published: String,
		updated: String? = nil,
		deleted: Bool,
		nsfw: Bool,
		actor_id: String,
		local: Bool,
		icon: String? = nil,
		banner: String? = nil,
		followers_url: String,
		inbox_url: String,
		hidden: Bool,
		posting_restricted_to_mods: Bool,
		instance_id: InstanceId
	) {
		self.id = id
		self.name = name
		self.title = title
		self.description = description
		self.removed = removed
		self.published = published
		self.updated = updated
		self.deleted = deleted
		self.nsfw = nsfw
		self.actor_id = actor_id
		self.local = local
		self.icon = icon
		self.banner = banner
		self.followers_url = followers_url
		self.inbox_url = inbox_url
		self.hidden = hidden
		self.posting_restricted_to_mods = posting_restricted_to_mods
		self.instance_id = instance_id
	}
}
