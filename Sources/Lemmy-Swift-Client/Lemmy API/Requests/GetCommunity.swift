//
//  GetCommunity.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct GetCommunityRequest: APIRequest {
	public typealias Response = GetCommunityResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/community"

	public let auth: String?
	public let id: Int?
	public let name: String?

	public init(auth: String? = nil, id: Int? = nil, name: String? = nil) {
		self.auth = auth
		self.id = id
		self.name = name
	}
}
public struct GetCommunityResponse: APIResponse {
	public let community_view: CommunityView
	public let default_post_language: Int?
	public let discussion_languaages: [Int]
	public let moderators: [CommunityModeratorView]
	public let online: Int
	public let site: Site?
}
