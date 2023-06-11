//
//  RemoveComment.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct RemoveCommentRequest: APIRequest {
	public typealias Response = CommentResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/comment/remove"

	public let auth: String
	public let comment_id: Int
	public let reason: String?
	public let removed: Bool

	public init(auth: String, comment_id: Int, reason: String? = nil, removed: Bool) {
		self.auth = auth
		self.comment_id = comment_id
		self.reason = reason
		self.removed = removed
	}
}
