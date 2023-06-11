//
//  PurgeCommunity.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct PurgeCommunityRequest: APIRequest {
	public typealias Response = PurgeItemResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/admin/purge/community"

	public let auth: String
	public let community_id: Int
	public let reason: String?

	public init(auth: String, community_id: Int, reason: String? = nil) {
		self.auth = auth
		self.community_id = community_id
		self.reason = reason
	}
}
