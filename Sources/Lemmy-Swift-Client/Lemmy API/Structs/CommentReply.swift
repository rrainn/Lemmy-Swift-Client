import Foundation

public struct CommentReply: Codable, Identifiable, Hashable {
	public let id: CommentReplyId
	public let recipientId: PersonId
	public let commentId: CommentId
	public let read: Bool
	public let published: String

	public init(
		id: CommentReplyId,
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
