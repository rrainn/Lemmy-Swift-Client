import Foundation

public struct PostReport: Codable, Identifiable, Hashable {
	public let id: PostReportId
	public let creator_id: PersonId
	public let post_id: PostId
	public let original_post_name: String
	public let original_post_url: String?
	public let original_post_body: String?
	public let reason: String
	public let resolved: Bool
	public let resolver_id: PersonId?
	public let published: String
	public let updated: String?

	public init(
		id: PostReportId,
		creator_id: PersonId,
		post_id: PostId,
		original_post_name: String,
		original_post_url: String? = nil,
		original_post_body: String? = nil,
		reason: String,
		resolved: Bool,
		resolver_id: PersonId? = nil,
		published: String,
		updated: String? = nil
	) {
		self.id = id
		self.creator_id = creator_id
		self.post_id = post_id
		self.original_post_name = original_post_name
		self.original_post_url = original_post_url
		self.original_post_body = original_post_body
		self.reason = reason
		self.resolved = resolved
		self.resolver_id = resolver_id
		self.published = published
		self.updated = updated
	}
}
