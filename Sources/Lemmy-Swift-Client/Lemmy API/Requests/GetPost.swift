//
//  GetPost.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct GetPostRequest: APIRequest {
	public typealias Response = GetPostResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/post"

	public let auth: String?
	public let comment_id: Int?
	public let id: Int?

	public init(auth: String? = nil, comment_id: Int? = nil, id: Int? = nil) {
		self.auth = auth
		self.comment_id = comment_id
		self.id = id
	}
}
public struct GetPostResponse: APIResponse {
	public let community_view: CommunityView
	public let moderators: [CommunityModeratorView]
	public let online: Int
	public let post_view: PostView

	public init(community_view: CommunityView, moderators: [CommunityModeratorView], online: Int, post_view: PostView) {
		self.community_view = community_view
		self.moderators = moderators
		self.online = online
		self.post_view = post_view
	}

}
