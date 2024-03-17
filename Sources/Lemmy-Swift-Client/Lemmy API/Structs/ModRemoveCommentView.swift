import Foundation

public struct ModRemoveCommentView: Codable, Hashable {
	public let mod_remove_comment: ModRemoveComment?
	public let moderator: Person?
	public let comment: Comment?
	public let commenter: Person?
	public let post: Post?
	public let community: Community?

	public init(
		mod_remove_comment: ModRemoveComment? = nil,
		moderator: Person? = nil,
		comment: Comment? = nil,
		commenter: Person? = nil,
		post: Post? = nil,
		community: Community? = nil
	) {
		self.mod_remove_comment = mod_remove_comment
		self.moderator = moderator
		self.comment = comment
		self.commenter = commenter
		self.post = post
		self.community = community
	}
}
