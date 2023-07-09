import Foundation

public struct Person: Codable, Identifiable, Hashable {
	public let id: PersonId
	public let name: String
	public let display_name: String?
	public let avatar: String?
	public let banned: Bool
	public let published: String
	public let updated: String?
	public let actor_id: String
	public let bio: String?
	public let local: Bool
	public let banner: String?
	public let deleted: Bool
	public let inbox_url: String
	public let matrix_user_id: String?
	public let admin: Bool
	public let bot_account: Bool
	public let ban_expires: String?
	public let instance_id: InstanceId

	public init(
		id: PersonId,
		name: String,
		display_name: String? = nil,
		avatar: String? = nil,
		banned: Bool,
		published: String,
		updated: String? = nil,
		actor_id: String,
		bio: String? = nil,
		local: Bool,
		banner: String? = nil,
		deleted: Bool,
		inbox_url: String,
		matrix_user_id: String? = nil,
		admin: Bool,
		bot_account: Bool,
		ban_expires: String? = nil,
		instance_id: InstanceId
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
		self.inbox_url = inbox_url
		self.matrix_user_id = matrix_user_id
		self.admin = admin
		self.bot_account = bot_account
		self.ban_expires = ban_expires
		self.instance_id = instance_id
	}
}
