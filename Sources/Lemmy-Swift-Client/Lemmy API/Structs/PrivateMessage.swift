import Foundation

public struct PrivateMessage: Codable, Identifiable, Hashable {
	public let id: PrivateMessageId?
	public let creator_id: PersonId?
	public let recipient_id: PersonId?
	public let content: String?
	public let deleted: Bool?
	public let read: Bool?
	public let published: String?
	public let updated: String?
	public let ap_id: String?
	public let local: Bool?

	public init(
		id: PrivateMessageId? = nil,
		creator_id: PersonId? = nil,
		recipient_id: PersonId? = nil,
		content: String? = nil,
		deleted: Bool? = nil,
		read: Bool? = nil,
		published: String? = nil,
		updated: String? = nil,
		ap_id: String? = nil,
		local: Bool? = nil
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
