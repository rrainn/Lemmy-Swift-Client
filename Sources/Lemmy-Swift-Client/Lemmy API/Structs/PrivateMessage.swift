import Foundation

public struct PrivateMessage: Codable {
	public let ap_id: String
	public let content: String
	public let creator_id: Int
	public let deleted: Bool
	public let id: Int
	public let local: Bool
	public let published: String
	public let read: Bool
	public let recipient_id: Int
	public let updated: String?

	public init(
		ap_id: String,
		content: String,
		creator_id: Int,
		deleted: Bool,
		id: Int,
		local: Bool,
		published: String,
		read: Bool,
		recipient_id: Int,
		updated: String? = nil
	) {
		self.ap_id = ap_id
		self.content = content
		self.creator_id = creator_id
		self.deleted = deleted
		self.id = id
		self.local = local
		self.published = published
		self.read = read
		self.recipient_id = recipient_id
		self.updated = updated
	}
}
