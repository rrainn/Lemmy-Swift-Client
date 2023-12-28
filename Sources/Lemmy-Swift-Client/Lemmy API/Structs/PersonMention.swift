import Foundation

public struct PersonMention: Codable, Identifiable, Hashable {
	public let id: PersonMentionId
	public let recipientId: PersonId
	public let commentId: CommentId
	public let read: Bool
	public let published: String

	public init(
		id: PersonMentionId,
		recipientId: PersonId,
		commentId: CommentId,
		read: Bool,
		published: String
	) {
		self.id = id
		self.recipientId = recipientId
		self.commentId = commentId
		self.read = read
		self.published = published
	}
}
