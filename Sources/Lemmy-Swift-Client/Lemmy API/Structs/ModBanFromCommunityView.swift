//
//  ModBanFromCommunityView.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct ModBanFromCommunityView: Codable {
	public let banned_person: PersonSafe
	public let community: CommunitySafe
	public let mod_ban_from_community: ModBanFromCommunity
	public let moderator: PersonSafe?
}
