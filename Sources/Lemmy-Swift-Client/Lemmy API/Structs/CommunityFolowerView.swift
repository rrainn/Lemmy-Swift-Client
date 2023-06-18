//
//  CommunityFolowerView.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct CommunityFolowerView: Codable {
	public let community: CommunitySafe
	public let follower: PersonSafe

	public init(community: CommunitySafe, follower: PersonSafe) {
		self.community = community
		self.follower = follower
	}
}
