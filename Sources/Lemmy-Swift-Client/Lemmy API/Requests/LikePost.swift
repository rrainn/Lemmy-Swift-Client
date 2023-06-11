//
//  LikePost.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct LikePostRequest: APIRequest {
	public typealias Response = PostResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/post/like"

	public let auth: String
	public let post_id: Int
	/// Must be 0, -1, or 1. Anything else will be rejected.
	public let score: Int

	public init(auth: String, post_id: Int, score: Int) {
		self.auth = auth
		self.post_id = post_id
		self.score = score
	}
}
