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
	public let limit: Int?
	public let page: Int?
	public let saved_only: Bool?
	public let sort: SortType?
	public let type_: ListingType?
}
public struct GetPostsResponse: APIResponse {
	public let posts: [PostView]
}
