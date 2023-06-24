//
//  ModlogActionType.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public enum ModlogActionType: String, Codable, CustomStringConvertible, CaseIterable {
	case adminPurgeComment = "AdminPurgeComment"
	case adminPurgeCommunity = "AdminPurgeCommunity"
	case adminPurgePerson = "AdminPurgePerson"
	case adminPurgePost = "AdminPurgePost"
	case all = "All"
	case modAdd = "ModAdd"
	case modAddCommunity = "ModAddCommunity"
	case modBan = "ModBan"
	case modBanFromCommunity = "ModBanFromCommunity"
	case modFeaturePost = "ModFeaturePost"
	case modHideCommunity = "ModHideCommunity"
	case modLockPost = "ModLockPost"
	case modRemoveComment = "ModRemoveComment"
	case modRemoveComunity = "ModRemoveCommunity"
	case modRemovePost = "ModRemovePost"
	case modTransferCommunity = "ModTransferCommunity"

	public var description: String {
		return self.rawValue
	}
}
