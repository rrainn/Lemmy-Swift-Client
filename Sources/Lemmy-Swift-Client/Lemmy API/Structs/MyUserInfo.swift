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

	public init(community_blocks: [CommunityBlockView], discussion_languages: [Int], follows: [CommunityFolowerView], local_user_view: LocalUserSettingsView, moderates: [CommunityModeratorView], person_blocks: [PersonBlockView]) {
		self.community_blocks = community_blocks
		self.discussion_languages = discussion_languages
		self.follows = follows
		self.local_user_view = local_user_view
		self.moderates = moderates
		self.person_blocks = person_blocks
	}
}
