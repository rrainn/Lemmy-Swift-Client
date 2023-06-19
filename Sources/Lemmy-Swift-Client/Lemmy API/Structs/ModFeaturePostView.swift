//
//  ModFeaturePostView.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct ModFeaturePostView: Codable {
	public let community: CommunitySafe
	public let mod_feature_post: ModFeaturePost
	public let moderator: PersonSafe?
	public let post: Post

	public init(community: CommunitySafe, mod_feature_post: ModFeaturePost, moderator: PersonSafe? = nil, post: Post) {
		self.community = community
		self.mod_feature_post = mod_feature_post
		self.moderator = moderator
		self.post = post
	}
}
