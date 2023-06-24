//
//  EditCommunity.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct EditCommunityRequest: APIRequest {
	public typealias Response = CommunityResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/community"

	public let auth: String
	public let banner: String?
	public let community_id: Int
	public let description: String?
	public let discussion_languages: [Int]?
	public let icon: String?
	public let nsfw: Bool?
	public let posting_restricted_to_mods: Bool?
	public let title: String?

	public init(auth: String, banner: String? = nil, community_id: Int, description: String? = nil, discussion_languages: [Int]? = nil, icon: String? = nil, nsfw: Bool? = nil, posting_restricted_to_mods: Bool? = nil, title: String? = nil) {
		self.auth = auth
		self.banner = banner
		self.community_id = community_id
		self.description = description
		self.discussion_languages = discussion_languages
		self.icon = icon
		self.nsfw = nsfw
		self.posting_restricted_to_mods = posting_restricted_to_mods
		self.title = title
	}
}
