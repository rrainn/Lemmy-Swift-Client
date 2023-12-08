import Foundation

public struct RegistrationApplication: Codable, Identifiable, Hashable {
	public let id: Int
	public let localUserId: LocalUserId
	public let answer: String
	public let adminId: PersonId?
	public let denyReason: String?
	public let published: String

	public init(
		id: Int,
		localUserId: LocalUserId,
		answer: String,
		adminId: PersonId? = nil,
		denyReason: String? = nil,
		published: String
	) {
		self.id = id
		self.localUserId = localUserId
		self.answer = answer
		self.adminId = adminId
		self.denyReason = denyReason
		self.published = published
	}
}
