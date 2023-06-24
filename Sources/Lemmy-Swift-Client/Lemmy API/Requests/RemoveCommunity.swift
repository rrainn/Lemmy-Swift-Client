//
//  RemoveCommunity.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct RemoveCommunityRequest: APIRequest {
	public typealias Response = CommunityResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/community/remove"

	public let auth: String
	public let community_id: Int
	/// The expire time in Unix seconds.
	public let expires: Int?
	public let reason: String?
	public let removed: Bool

	public init(auth: String, community_id: Int, expires: Int? = nil, reason: String? = nil, removed: Bool) {
		self.auth = auth
		self.community_id = community_id
		self.expires = expires
		self.reason = reason
		self.removed = removed
	}
}
