import Foundation

public struct PrivateMessage: Codable, Identifiable, Hashable {
	public let id: PrivateMessageId
	public let creatorId: PersonId
	public let recipientId: PersonId
	public let content: String
	public let deleted: Bool
	public let read: Bool
	public let published: String
	public let updated: String?
	public let apId: String
	public let local: Bool

	public init(
		id: PrivateMessageId,
		creatorId: PersonId,
		recipientId: PersonId,
		content: String,
		deleted: Bool,
		read: Bool,
		published: String,
		updated: String? = nil,
		apId: String,
		local: Bool
	) {
		self.id = id
		self.creatorId = creatorId
		self.recipientId = recipientId
		self.content = content
		self.deleted = deleted
		self.read = read
		self.published = published
		self.updated = updated
		self.apId = apId
		self.local = local
	}
}
