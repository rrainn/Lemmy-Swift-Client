import Foundation

public struct LoginToken: Codable, Hashable {
	public let user_id: LocalUserId
	public let published: String
	public let ip: String?
	public let user_agent: String?

	public init(
		user_id: LocalUserId,
		published: String,
		ip: String? = nil,
		user_agent: String? = nil
	) {
		self.user_id = user_id
		self.published = published
		self.ip = ip
		self.user_agent = user_agent
	}
}
