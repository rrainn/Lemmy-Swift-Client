//
//  AdminPurgeCommentView.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct AdminPurgeCommentView: Codable {
	public let admin: PersonSafe?
	public let admin_purge_comment: AdminPurgeComment
	public let post: Post

	public init(admin: PersonSafe? = nil, admin_purge_comment: AdminPurgeComment, post: Post) {
		self.admin = admin
		self.admin_purge_comment = admin_purge_comment
		self.post = post
	}
}
