import Foundation

public struct RegistrationApplication: Codable, Identifiable, Hashable {
	public let admin_id: Int?
	public let answer: String
	public let deny_reason: String
	public let id: Int
	public let local_user_id: Int
	public let published: String

	public init(
		admin_id: Int? = nil,
		answer: String,
		deny_reason: String,
		id: Int,
		local_user_id: Int,
		published: String
	) {
		self.admin_id = admin_id
		self.answer = answer
		self.deny_reason = deny_reason
		self.id = id
		self.local_user_id = local_user_id
		self.published = published
	}
}
