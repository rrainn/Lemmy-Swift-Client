import Foundation

public struct PostReport: Codable, Identifiable, Hashable {
	public let id: PostReportId
	public let creatorId: PersonId
	public let postId: PostId
	public let originalPostName: String
	public let originalPostUrl: String?
	public let originalPostBody: String?
	public let reason: String
	public let resolved: Bool
	public let resolverId: PersonId?
	public let published: String
	public let updated: String?

	public init(
		id: PostReportId,
		creatorId: PersonId,
		postId: PostId,
		originalPostName: String,
		originalPostUrl: String? = nil,
		originalPostBody: String? = nil,
		reason: String,
		resolved: Bool,
		resolverId: PersonId? = nil,
		published: String,
		updated: String? = nil
	) {
		self.id = id
		self.creatorId = creatorId
		self.postId = postId
		self.originalPostName = originalPostName
		self.originalPostUrl = originalPostUrl
		self.originalPostBody = originalPostBody
		self.reason = reason
		self.resolved = resolved
		self.resolverId = resolverId
		self.published = published
		self.updated = updated
	}
}
