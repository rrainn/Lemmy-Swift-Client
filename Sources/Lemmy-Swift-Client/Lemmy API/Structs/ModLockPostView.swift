//
//  ModLockPostView.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct ModLockPostView: Codable {
	public let community: CommunitySafe
	public let mod_lock_post: ModLockPost
	public let moderator: PersonSafe?
	public let post: Post
}
