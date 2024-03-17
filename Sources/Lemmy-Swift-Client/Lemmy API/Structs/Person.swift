import Foundation

public struct Person: Codable, Identifiable, Hashable {
	public let id: PersonId?
	public let name: String?
	public let display_name: String?
	public let avatar: String?
	public let banned: Bool?
	public let published: String?
	public let updated: String?
	public let actor_id: String?
	public let bio: String?
	public let local: Bool?
	public let banner: String?
	public let deleted: Bool?
	public let matrix_user_id: String?
	public let bot_account: Bool?
	public let ban_expires: String?
	public let instance_id: InstanceId?

	public init(
		id: PersonId? = nil,
		name: String? = nil,
		display_name: String? = nil,
		avatar: String? = nil,
		banned: Bool? = nil,
		published: String? = nil,
		updated: String? = nil,
		actor_id: String? = nil,
		bio: String? = nil,
		local: Bool? = nil,
		banner: String? = nil,
		deleted: Bool? = nil,
		matrix_user_id: String? = nil,
		bot_account: Bool? = nil,
		ban_expires: String? = nil,
		instance_id: InstanceId? = nil
	) {
		self.id = id
		self.name = name
		self.display_name = display_name
		self.avatar = avatar
		self.banned = banned
		self.published = published
		self.updated = updated
		self.actor_id = actor_id
		self.bio = bio
		self.local = local
		self.banner = banner
		self.deleted = deleted
		self.matrix_user_id = matrix_user_id
		self.bot_account = bot_account
		self.ban_expires = ban_expires
		self.instance_id = instance_id
	}
}
