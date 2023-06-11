//
//  MyUserInfo.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct MyUserInfo: Codable {
	public let community_blocks: [CommunityBlockView]
	public let discussion_languages: [Int]
	public let follows: [CommunityFolowerView]
	public let local_user_view: LocalUserSettingsView
	public let moderates: [CommunityModeratorView]
	public let person_blocks: [PersonBlockView]
}
