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
}
