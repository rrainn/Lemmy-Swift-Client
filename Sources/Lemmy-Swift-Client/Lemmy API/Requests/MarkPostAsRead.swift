//
//  MarkPostAsRead.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct MarkPostAsReadRequest: APIRequest {
	public typealias Response = PostResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/post/mark_as_read"

	public let auth: String
	public let post_id: Int
	public let read: Bool

	public init(auth: String, post_id: Int, read: Bool) {
		self.auth = auth
		self.post_id = post_id
		self.read = read
	}
}
