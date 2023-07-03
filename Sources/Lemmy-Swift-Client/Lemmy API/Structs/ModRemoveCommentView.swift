import Foundation

public struct ModRemoveCommentView: Codable {
	public let comment: Comment
	public let commenter: Person
	public let community: CommunitySafe
	public let mod_remove_comment: ModRemoveComment
	public let moderator: Person?
	public let post: Post

	public init(
		comment: Comment,
		commenter: Person,
		community: CommunitySafe,
		mod_remove_comment: ModRemoveComment,
		moderator: Person? = nil,
		post: Post
	) {
		self.comment = comment
		self.commenter = commenter
		self.community = community
		self.mod_remove_comment = mod_remove_comment
		self.moderator = moderator
		self.post = post
	}
}
