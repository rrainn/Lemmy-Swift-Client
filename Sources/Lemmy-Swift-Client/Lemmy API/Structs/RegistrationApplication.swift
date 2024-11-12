import Foundation

public struct RegistrationApplication: Codable, Identifiable, Hashable {
	public let id: RegistrationApplicationId?
	public let local_user_id: LocalUserId?
	public let answer: String?
	public let admin_id: PersonId?
	public let deny_reason: String?
	public let published: String?

	public init(
		id: RegistrationApplicationId? = nil,
		local_user_id: LocalUserId? = nil,
		answer: String? = nil,
		admin_id: PersonId? = nil,
		deny_reason: String? = nil,
		published: String? = nil
	) {
		self.id = id
		self.local_user_id = local_user_id
		self.answer = answer
		self.admin_id = admin_id
		self.deny_reason = deny_reason
		self.published = published
	}
}
