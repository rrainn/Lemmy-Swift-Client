//
//  ModAddCommunityView.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct ModAddCommunityView: Codable {
	public let community: CommunitySafe
	public let mod_add_community: ModAddCommunity
	public let modded_person: PersonSafe
	public let moderator: PersonSafe
}
