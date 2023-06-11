//
//  ModLockPost.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct ModLockPost: Codable {
	public let id: Int
	public let locked: Bool?
	public let mod_person_id: Int
	public let post_id: Int
	public let when_: String
}
