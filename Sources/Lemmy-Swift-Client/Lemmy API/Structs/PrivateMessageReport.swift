import Foundation

public struct PrivateMessageReport: Codable, Identifiable, Hashable {
	public let id: PrivateMessageReportId
	public let creatorId: PersonId
	public let privateMessageId: PrivateMessageId
	public let originalPmText: String
	public let reason: String
	public let resolved: Bool
	public let resolverId: PersonId?
	public let published: String
	public let updated: String?

	public init(
		id: PrivateMessageReportId,
		creatorId: PersonId,
		privateMessageId: PrivateMessageId,
		originalPmText: String,
		reason: String,
		resolved: Bool,
		resolverId: PersonId? = nil,
		published: String,
		updated: String? = nil
	) {
		self.id = id
		self.creatorId = creatorId
		self.privateMessageId = privateMessageId
		self.originalPmText = originalPmText
		self.reason = reason
		self.resolved = resolved
		self.resolverId = resolverId
		self.published = published
		self.updated = updated
	}
}
