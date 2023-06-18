//
//  ModRemoveCommentView.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct ModRemoveCommentView: Codable {
	public let comment: Comment
	public let commenter: PersonSafe
	public let community: CommunitySafe
	public let mod_remove_comment: ModRemoveComment
	public let moderator: PersonSafe?
	public let post: Post

	public init(comment: Comment, commenter: PersonSafe, community: CommunitySafe, mod_remove_comment: ModRemoveComment, moderator: PersonSafe? = nil, post: Post) {
		self.comment = comment
		self.commenter = commenter
		self.community = community
		self.mod_remove_comment = mod_remove_comment
		self.moderator = moderator
		self.post = post
	}
}
