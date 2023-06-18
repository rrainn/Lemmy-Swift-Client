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

	public init(id: Int, mod_person_id: Int, post_id: Int, reason: String? = nil, removed: Bool? = nil, when_: String) {
		self.id = id
		self.mod_person_id = mod_person_id
		self.post_id = post_id
		self.reason = reason
		self.removed = removed
		self.when_ = when_
	}
}
