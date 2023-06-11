//
//  Search.swift
//
//
//  Created by Charlie Fish on 6/10/23.
//

import Foundation

public struct SearchRequest: APIRequest {
	public typealias Response = SearchResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/search"

	public let auth: String?
	public let community_id: Int?
	public let community_name: String?
	public let creator_id: Int?
	public let limit: Int?
	public let listing_type: ListingType?
	public let page: Int?
	public let q: String
	public let sort: SortType?
	public let type_: SearchType?

	public init(auth: String? = nil, community_id: Int? = nil, community_name: String? = nil, creator_id: Int? = nil, limit: Int? = nil, listing_type: ListingType? = nil, page: Int? = nil, q: String, sort: SortType? = nil, type_: SearchType? = nil) {
		self.auth = auth
		self.community_id = community_id
		self.community_name = community_name
		self.creator_id = creator_id
		self.limit = limit
		self.listing_type = listing_type
		self.page = page
		self.q = q
		self.sort = sort
		self.type_ = type_
	}
}
public struct SearchResponse: APIResponse {
	public let comments: [CommentView]
	public let communities: [CommunityView]
	public let posts: [PostView]
	public let type_: String
	public let users: [PersonViewSafe]
}
