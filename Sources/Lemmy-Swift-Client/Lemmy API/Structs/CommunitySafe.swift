import Foundation

public struct CommunitySafe: Codable {
	public let actor_id: String
	public let banner: String?
	public let deleted: Bool
	public let description: String?
	public let hidden: Bool
	public let icon: String?
	public let id: Int
	public let instance_id: Int
	public let local: Bool
	public let name: String
	public let nsfw: Bool
	public let posting_restricted_to_mods: Bool
	public let published: String
	public let removed: Bool
	public let title: String
	public let updated: String?

	public init(
		actor_id: String,
		banner: String? = nil,
		deleted: Bool,
		description: String? = nil,
		hidden: Bool,
		icon: String? = nil,
		id: Int,
		instance_id: Int,
		local: Bool,
		name: String,
		nsfw: Bool,
		posting_restricted_to_mods: Bool,
		published: String,
		removed: Bool,
		title: String,
		updated: String? = nil
	) {
		self.actor_id = actor_id
		self.banner = banner
		self.deleted = deleted
		self.description = description
		self.hidden = hidden
		self.icon = icon
		self.id = id
		self.instance_id = instance_id
		self.local = local
		self.name = name
		self.nsfw = nsfw
		self.posting_restricted_to_mods = posting_restricted_to_mods
		self.published = published
		self.removed = removed
		self.title = title
		self.updated = updated
	}
}
