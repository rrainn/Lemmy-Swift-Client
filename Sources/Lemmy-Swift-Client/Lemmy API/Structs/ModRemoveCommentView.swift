import Foundation

public struct ModRemoveCommentView: Codable, Hashable {
	public let mod_remove_comment: ModRemoveComment
	public let moderator: Person?
	public let comment: Comment
	public let commenter: Person
	public let post: Post
	public let community: Community

	public init(
		mod_remove_comment: ModRemoveComment,
		moderator: Person? = nil,
		comment: Comment,
		commenter: Person,
		post: Post,
		community: Community
	) {
		self.mod_remove_comment = mod_remove_comment
		self.moderator = moderator
		self.comment = comment
		self.commenter = commenter
		self.post = post
		self.community = community
	}
}
