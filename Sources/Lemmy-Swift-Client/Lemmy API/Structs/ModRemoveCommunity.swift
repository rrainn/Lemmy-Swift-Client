//
//  ModRemoveCommunity.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct ModRemoveCommunity: Codable {
	public let community_id: Int
	public let expires: String?
	public let id: Int
	public let mod_person_id: Int
	public let reason: String?
	public let removed: Bool?
	public let when_: String

	public init(community_id: Int, expires: String? = nil, id: Int, mod_person_id: Int, reason: String? = nil, removed: Bool? = nil, when_: String) {
		self.community_id = community_id
		self.expires = expires
		self.id = id
		self.mod_person_id = mod_person_id
		self.reason = reason
		self.removed = removed
		self.when_ = when_
	}
}
