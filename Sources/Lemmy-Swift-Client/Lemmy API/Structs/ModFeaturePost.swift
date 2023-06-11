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
}
