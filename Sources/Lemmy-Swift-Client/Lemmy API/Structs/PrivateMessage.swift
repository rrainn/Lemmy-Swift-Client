import Foundation

public struct PrivateMessage: Codable, Identifiable, Hashable {
	public let id: PrivateMessageId
	public let creator_id: PersonId
	public let recipient_id: PersonId
	public let content: String
	public let deleted: Bool
	public let read: Bool
	public let published: String
	public let updated: String?
	public let ap_id: String
	public let local: Bool

	public init(
		id: PrivateMessageId,
		creator_id: PersonId,
		recipient_id: PersonId,
		content: String,
		deleted: Bool,
		read: Bool,
		published: String,
		updated: String? = nil,
		ap_id: String,
		local: Bool
	) {
		self.id = id
		self.creator_id = creator_id
		self.recipient_id = recipient_id
		self.content = content
		self.deleted = deleted
		self.read = read
		self.published = published
		self.updated = updated
		self.ap_id = ap_id
		self.local = local
	}
}
