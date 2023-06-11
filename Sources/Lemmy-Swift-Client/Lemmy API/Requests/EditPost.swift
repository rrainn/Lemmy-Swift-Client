//
//  EditPost.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct EditPostRequest: APIRequest {
	public typealias Response = PostResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/post"

	public let auth: String
	public let body: String?
	public let language_id: Int?
	public let name: String?
	public let nsfw: Bool?
	public let post_id: Int
	public let url: String?

	public init(auth: String, body: String? = nil, language_id: Int? = nil, name: String? = nil, nsfw: Bool? = nil, post_id: Int, url: String? = nil) {
		self.auth = auth
		self.body = body
		self.language_id = language_id
		self.name = name
		self.nsfw = nsfw
		self.post_id = post_id
		self.url = url
	}
}
