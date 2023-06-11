//
//  ModBanView.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct ModBanView: Codable {
	public let banned_person: PersonSafe
	public let mod_ban: ModBan
	public let moderator: PersonSafe?
}
