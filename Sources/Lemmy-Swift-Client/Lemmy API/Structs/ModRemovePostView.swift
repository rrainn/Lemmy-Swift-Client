//
//  ModRemovePostView.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct ModRemovePostView: Codable {
	public let community: CommunitySafe
	public let mod_remove_post: ModRemovePost
	public let moderator: PersonSafe?
	public let post: Post
}
