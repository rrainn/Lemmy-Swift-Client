import Foundation

public struct PostReport: Codable, Identifiable, Hashable {
	public let id: PostReportId?
	public let creator_id: PersonId?
	public let post_id: PostId?
	public let original_post_name: String?
	public let original_post_url: String?
	public let original_post_body: String?
	public let reason: String?
	public let resolved: Bool?
	public let resolver_id: PersonId?
	public let published: String?
	public let updated: String?

	public init(
		id: PostReportId? = nil,
		creator_id: PersonId? = nil,
		post_id: PostId? = nil,
		original_post_name: String? = nil,
		original_post_url: String? = nil,
		original_post_body: String? = nil,
		reason: String? = nil,
		resolved: Bool? = nil,
		resolver_id: PersonId? = nil,
		published: String? = nil,
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
