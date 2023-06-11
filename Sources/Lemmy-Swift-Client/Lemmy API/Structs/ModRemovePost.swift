//
//  ModRemovePost.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct ModRemovePost: Codable {
	public let id: Int
	public let mod_person_id: Int
	public let post_id: Int
	public let reason: String?
	public let removed: Bool?
	public let when_: String
}
