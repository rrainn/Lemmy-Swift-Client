//
//  CreatePost.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct CreatePostRequest: APIRequest {
	public typealias Response = PostResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/post"

	public let auth: String
	public let body: String?
	public let community_id: Int
	public let honeypot: String?
	public let language_id: Int?
	public let name: String
	public let nsfw: Bool?
	public let url: String?

	public init(auth: String, body: String? = nil, community_id: Int, honeypot: String? = nil, language_id: Int? = nil, name: String, nsfw: Bool? = nil, url: String? = nil) {
		self.auth = auth
		self.body = body
		self.community_id = community_id
		self.honeypot = honeypot
		self.language_id = language_id
		self.name = name
		self.nsfw = nsfw
		self.url = url
	}
}
public struct PostResponse: APIResponse {
	public let post_view: PostView

	public init(post_view: PostView) {
		self.post_view = post_view
	}
}
