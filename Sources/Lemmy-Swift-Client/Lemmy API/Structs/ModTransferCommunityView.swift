//
//  ModTransferCommunityView.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct ModTransferCommunityView: Codable {
	public let community: CommunitySafe
	public let mod_transfer_community: ModTransferCommunity
	public let modded_person: PersonSafe
	public let moderator: PersonSafe?
}
