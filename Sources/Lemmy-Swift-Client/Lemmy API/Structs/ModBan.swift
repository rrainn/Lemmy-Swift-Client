//
//  ModBan.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct ModBan: Codable {
	public let banned: Bool
	public let expires: String
	public let id: Int
	public let mod_person_id: Int
	public let other_person_id: Int
	public let reason: String?
	public let when_: String
}
