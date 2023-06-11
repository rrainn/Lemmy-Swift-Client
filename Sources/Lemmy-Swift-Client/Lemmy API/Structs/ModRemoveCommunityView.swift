//
//  ModRemoveCommunityView.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct ModRemoveCommunityView: Codable {
	public let community: CommunitySafe
	public let mod_remove_community: ModRemoveCommunity
	public let moderator: PersonSafe?
}
