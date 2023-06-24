//
//  GetPosts.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct GetPostsRequest: APIRequest {
	public typealias Response = GetPostsResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/post/list"

	public let auth: String?
	public let community_id: Int?
	/// To get posts for a federated community by name, use `name@instance.tld`.
	public let community_name: String?
	/// The maximum number of posts to retrieve.
	///
	/// It is possible that less posts will be returned if the maximum is greater than the number of posts available.
	///
	/// The server will throw a `couldnt_get_posts` error if you pass in a limit greater than 50.
	public let limit: Int?
	public let page: Int?
	public let saved_only: Bool?
	public let sort: SortType?
	public let type_: ListingType?

	public init(auth: String? = nil, community_id: Int? = nil, community_name: String? = nil, limit: Int? = nil, page: Int? = nil, saved_only: Bool? = nil, sort: SortType? = nil, type_: ListingType? = nil) {
		self.auth = auth
		self.community_id = community_id
		self.community_name = community_name
		self.limit = limit
		self.page = page
		self.saved_only = saved_only
		self.sort = sort
		self.type_ = type_
	}
}
public struct GetPostsResponse: APIResponse {
	public let posts: [PostView]

	public init(posts: [PostView]) {
		self.posts = posts
	}
}
