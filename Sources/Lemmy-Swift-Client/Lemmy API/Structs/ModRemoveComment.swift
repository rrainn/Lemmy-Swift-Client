//
//  ModRemoveComment.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct ModRemoveComment: Codable {
	public let comment_id: Int
	public let id: Int
	public let mod_person_id: Int
	public let reason: String?
	public let removed: Bool?
	public let when_: String
}
