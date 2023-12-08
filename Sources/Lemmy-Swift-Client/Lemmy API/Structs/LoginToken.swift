import Foundation

public struct LoginToken: Codable, Hashable {
	public let userId: LocalUserId
	public let published: String
	public let ip: String?
	public let userAgent: String?

	public init(
		userId: LocalUserId,
		published: String,
		ip: String? = nil,
		userAgent: String? = nil
	) {
		self.userId = userId
		self.published = published
		self.ip = ip
		self.userAgent = userAgent
	}
}
