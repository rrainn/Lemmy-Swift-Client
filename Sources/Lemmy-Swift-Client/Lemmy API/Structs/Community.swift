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
	public let actorId: String
	public let local: Bool
	public let icon: String?
	public let banner: String?
	public let hidden: Bool
	public let postingRestrictedToMods: Bool
	public let instanceId: InstanceId

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
		actorId: String,
		local: Bool,
		icon: String? = nil,
		banner: String? = nil,
		hidden: Bool,
		postingRestrictedToMods: Bool,
		instanceId: InstanceId
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
		self.actorId = actorId
		self.local = local
		self.icon = icon
		self.banner = banner
		self.hidden = hidden
		self.postingRestrictedToMods = postingRestrictedToMods
		self.instanceId = instanceId
	}
}
