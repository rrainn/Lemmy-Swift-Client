import Foundation

public struct ModRemoveCommentView: Codable, Hashable {
	public let modRemoveComment: ModRemoveComment
	public let moderator: Person?
	public let comment: Comment
	public let commenter: Person
	public let post: Post
	public let community: Community

	public init(
		modRemoveComment: ModRemoveComment,
		moderator: Person? = nil,
		comment: Comment,
		commenter: Person,
		post: Post,
		community: Community
	) {
		self.modRemoveComment = modRemoveComment
		self.moderator = moderator
		self.comment = comment
		self.commenter = commenter
		self.post = post
		self.community = community
	}
}
