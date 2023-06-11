//
//  PurgePost.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct PurgePostRequest: APIRequest {
	public typealias Response = PurgeItemResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/admin/purge/post"

	public let auth: String
	public let post_id: Int
	public let reason: String?

	public init(auth: String, post_id: Int, reason: String? = nil) {
		self.auth = auth
		self.post_id = post_id
		self.reason = reason
	}
}
