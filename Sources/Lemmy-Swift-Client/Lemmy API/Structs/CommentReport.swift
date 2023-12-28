import Foundation

public struct CommentReport: Codable, Identifiable, Hashable {
	public let id: CommentReportId
	public let creatorId: PersonId
	public let commentId: CommentId
	public let originalCommentText: String
	public let reason: String
	public let resolved: Bool
	public let resolverId: PersonId?
	public let published: String
	public let updated: String?

	public init(
		id: CommentReportId,
		creatorId: PersonId,
		commentId: CommentId,
		originalCommentText: String,
		reason: String,
		resolved: Bool,
		resolverId: PersonId? = nil,
		published: String,
		updated: String? = nil
	) {
		self.id = id
		self.creatorId = creatorId
		self.commentId = commentId
		self.originalCommentText = originalCommentText
		self.reason = reason
		self.resolved = resolved
		self.resolverId = resolverId
		self.published = published
		self.updated = updated
	}
}
