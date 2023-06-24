//
//  GetPersonMentions.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct GetPersonMentionsRequest: APIRequest {
	public typealias Response = GetPersonMentionsResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/user/mention"

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
public struct GetPersonMentionsResponse: APIResponse {
	public let mentions: [PersonMentionView]

	public init(mentions: [PersonMentionView]) {
		self.mentions = mentions
	}
}

