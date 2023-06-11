//
//  CommunityModeratorView.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct CommunityModeratorView: Codable {
	public let community: CommunitySafe
	public let moderator: PersonSafe
}
