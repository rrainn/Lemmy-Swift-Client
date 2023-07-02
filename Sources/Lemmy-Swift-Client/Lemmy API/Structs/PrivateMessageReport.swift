import Foundation

public struct PrivateMessageReport: Codable {
	public let creator_id: Int
	public let id: Int
	public let original_pm_text: String
	public let private_message_id: Int
	public let published: Date
	public let reason: String
	public let resolved: Bool
	public let resolver_id: Int?
	public let updated: Date?

	public init(
		creator_id: Int,
		id: Int,
		original_pm_text: String,
		private_message_id: Int,
		published: Date,
		reason: String,
		resolved: Bool,
		resolver_id: Int? = nil,
		updated: Date? = nil
	) {
		self.creator_id = creator_id
		self.id = id
		self.original_pm_text = original_pm_text
		self.private_message_id = private_message_id
		self.published = published
		self.reason = reason
		self.resolved = resolved
		self.resolver_id = resolver_id
		self.updated = updated
	}
}
