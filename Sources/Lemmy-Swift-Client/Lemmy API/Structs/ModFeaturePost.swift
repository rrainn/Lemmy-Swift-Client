//
//  ModFeaturePost.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct ModFeaturePost: Codable {
	public let featured: Bool
	public let id: Int
	public let is_featured_community: Bool
	public let mod_person_id: Int
	public let post_id: Int
	public let when_: String

	public init(featured: Bool, id: Int, is_featured_community: Bool, mod_person_id: Int, post_id: Int, when_: String) {
		self.featured = featured
		self.id = id
		self.is_featured_community = is_featured_community
		self.mod_person_id = mod_person_id
		self.post_id = post_id
		self.when_ = when_
	}
}
