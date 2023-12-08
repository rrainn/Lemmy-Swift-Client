import Foundation

public struct Person: Codable, Identifiable, Hashable {
	public let id: PersonId
	public let name: String
	public let displayName: String?
	public let avatar: String?
	public let banned: Bool
	public let published: String
	public let updated: String?
	public let actorId: String
	public let bio: String?
	public let local: Bool
	public let banner: String?
	public let deleted: Bool
	public let matrixUserId: String?
	public let botAccount: Bool
	public let banExpires: String?
	public let instanceId: InstanceId

	public init(
		id: PersonId,
		name: String,
		displayName: String? = nil,
		avatar: String? = nil,
		banned: Bool,
		published: String,
		updated: String? = nil,
		actorId: String,
		bio: String? = nil,
		local: Bool,
		banner: String? = nil,
		deleted: Bool,
		matrixUserId: String? = nil,
		botAccount: Bool,
		banExpires: String? = nil,
		instanceId: InstanceId
	) {
		self.id = id
		self.name = name
		self.displayName = displayName
		self.avatar = avatar
		self.banned = banned
		self.published = published
		self.updated = updated
		self.actorId = actorId
		self.bio = bio
		self.local = local
		self.banner = banner
		self.deleted = deleted
		self.matrixUserId = matrixUserId
		self.botAccount = botAccount
		self.banExpires = banExpires
		self.instanceId = instanceId
	}
}
