//
//  GetReplies.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct GetRepliesRequest: APIRequest {
	public typealias Response = GetRepliesResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/user/replies"

	public let auth: String
	public let limit: Int?
	public let page: Int?
	public let sort: CommentSortType?
	public let unread_only: Bool?

	public init(auth: String, limit: Int? = nil, page: Int? = nil, sort: CommentSortType? = nil, unread_only: Bool? = nil) {
		self.auth = auth
		self.limit = limit
		self.page = page
		self.sort = sort
		self.unread_only = unread_only
	}
}
public struct GetRepliesResponse: APIResponse {
	public let replies: [CommentReplyView]

	public init(replies: [CommentReplyView]) {
		self.replies = replies
	}
}
