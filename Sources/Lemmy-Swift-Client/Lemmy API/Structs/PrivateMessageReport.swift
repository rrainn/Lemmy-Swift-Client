import Foundation

public struct PrivateMessageReport: Codable, Identifiable, Hashable {
	public let id: PrivateMessageReportId?
	public let creator_id: PersonId?
	public let private_message_id: PrivateMessageId?
	public let original_pm_text: String?
	public let reason: String?
	public let resolved: Bool?
	public let resolver_id: PersonId?
	public let published: String?
	public let updated: String?

	public init(
		id: PrivateMessageReportId? = nil,
		creator_id: PersonId? = nil,
		private_message_id: PrivateMessageId? = nil,
		original_pm_text: String? = nil,
		reason: String? = nil,
		resolved: Bool? = nil,
		resolver_id: PersonId? = nil,
		published: String? = nil,
		updated: String? = nil
	) {
		self.id = id
		self.creator_id = creator_id
		self.private_message_id = private_message_id
		self.original_pm_text = original_pm_text
		self.reason = reason
		self.resolved = resolved
		self.resolver_id = resolver_id
		self.published = published
		self.updated = updated
	}
}
