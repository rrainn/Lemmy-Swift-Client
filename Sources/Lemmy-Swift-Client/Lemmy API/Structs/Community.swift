import Foundation

public struct Community: Codable, Identifiable, Hashable {
	public let id: CommunityId?
	public let name: String?
	public let title: String?
	public let description: String?
	public let removed: Bool?
	public let published: String?
	public let updated: String?
	public let deleted: Bool?
	public let nsfw: Bool?
	public let actor_id: String?
	public let local: Bool?
	public let icon: String?
	public let banner: String?
	public let hidden: Bool?
	public let posting_restricted_to_mods: Bool?
	public let instance_id: InstanceId?

	public init(
		id: CommunityId? = nil,
		name: String? = nil,
		title: String? = nil,
		description: String? = nil,
		removed: Bool? = nil,
		published: String? = nil,
		updated: String? = nil,
		deleted: Bool? = nil,
		nsfw: Bool? = nil,
		actor_id: String? = nil,
		local: Bool? = nil,
		icon: String? = nil,
		banner: String? = nil,
		hidden: Bool? = nil,
		posting_restricted_to_mods: Bool? = nil,
		instance_id: InstanceId? = nil
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
		self.hidden = hidden
		self.posting_restricted_to_mods = posting_restricted_to_mods
		self.instance_id = instance_id
	}
}
