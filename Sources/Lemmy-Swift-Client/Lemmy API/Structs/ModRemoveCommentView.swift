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
}
