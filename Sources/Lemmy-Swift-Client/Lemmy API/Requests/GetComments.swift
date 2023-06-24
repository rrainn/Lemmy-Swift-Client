//
//  GetComments.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct GetCommentsRequest: APIRequest {
	public typealias Response = GetCommentsResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/comment/list"

	public let auth: String?
	public let community_id: Int?
	public let community_name: String?
	public let limit: Int?
	public let max_depth: Int?
	public let page: Int?
	public let parent_id: Int?
	public let post_id: Int?
	public let saved_only: Bool?
	public let sort: CommentSortType?
	public let type_: ListingType?

	public init(auth: String? = nil, community_id: Int? = nil, community_name: String? = nil, limit: Int? = nil, max_depth: Int? = nil, page: Int? = nil, parent_id: Int? = nil, post_id: Int? = nil, saved_only: Bool? = nil, sort: CommentSortType? = nil, type_: ListingType? = nil) {
		self.auth = auth
		self.community_id = community_id
		self.community_name = community_name
		self.limit = limit
		self.max_depth = max_depth
		self.page = page
		self.parent_id = parent_id
		self.post_id = post_id
		self.saved_only = saved_only
		self.sort = sort
		self.type_ = type_
	}
}
public struct GetCommentsResponse: APIResponse {
	public let comments: [CommentView]

	public init(comments: [CommentView]) {
		self.comments = comments
	}
}
