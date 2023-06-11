//
//  ModTransferCommunity.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct ModTransferCommunity: Codable {
	public let community_id: Int
	public let id: Int
	public let mod_person_id: Int
	public let other_person_id: Int
	public let removed: Bool?
	public let when_: String
}
