//
//  LockPost.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct LockPostRequest: APIRequest {
	public typealias Response = PostResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/post/lock"

	public let auth: String
	public let locked: Bool
	public let post_id: Int

	public init(auth: String, locked: Bool, post_id: Int) {
		self.auth = auth
		self.locked = locked
		self.post_id = post_id
	}
}
