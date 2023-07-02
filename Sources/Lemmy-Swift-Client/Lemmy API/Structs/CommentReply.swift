import Foundation

public struct CommentReply: Codable {
	public let comment_id: Int
	public let id: Int
	public let published: Date
	public let read: Bool
	public let recipient_id: Int

	public init(comment_id: Int, id: Int, published: Date, read: Bool, recipient_id: Int) {
		self.comment_id = comment_id
		self.id = id
		self.published = published
		self.read = read
		self.recipient_id = recipient_id
	}
}
