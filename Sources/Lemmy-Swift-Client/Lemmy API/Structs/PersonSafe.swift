import Foundation

public struct Person: Codable {
	public let actor_id: String
	public let admin: Bool
	public let avatar: String?
	public let ban_expires: String?
	public let banned: Bool
	public let banner: String?
	public let bio: String?
	public let bot_account: Bool
	public let deleted: Bool
	public let display_name: String?
	public let id: Int
	public let inbox_url: String?
	public let instance_id: Int
	public let local: Bool
	public let matrix_user_id: String?
	public let name: String
	public let published: String
	public let shared_inbox_url: String?
	public let updated: String?

	public init(
		actor_id: String,
		admin: Bool,
		avatar: String? = nil,
		ban_expires: String? = nil,
		banned: Bool,
		banner: String? = nil,
		bio: String? = nil,
		bot_account: Bool,
		deleted: Bool,
		display_name: String? = nil,
		id: Int,
		inbox_url: String?,
		instance_id: Int,
		local: Bool,
		matrix_user_id: String? = nil,
		name: String,
		published: String,
		shared_inbox_url: String? = nil,
		updated: String? = nil
	) {
		self.actor_id = actor_id
		self.admin = admin
		self.avatar = avatar
		self.ban_expires = ban_expires
		self.banned = banned
		self.banner = banner
		self.bio = bio
		self.bot_account = bot_account
		self.deleted = deleted
		self.display_name = display_name
		self.id = id
		self.inbox_url = inbox_url
		self.instance_id = instance_id
		self.local = local
		self.matrix_user_id = matrix_user_id
		self.name = name
		self.published = published
		self.shared_inbox_url = shared_inbox_url
		self.updated = updated
	}
}
