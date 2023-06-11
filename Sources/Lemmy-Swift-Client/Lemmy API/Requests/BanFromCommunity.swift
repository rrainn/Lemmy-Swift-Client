//
//  BanFromCommunity.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct BanFromCommunityRequest: APIRequest {
	public typealias Response = BanFromCommunityResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/community/ban_user"

	public let auth: String
	public let ban: Bool
	public let community_id: Int
	/// The expire time in Unix seconds.
	public let expires: Int?
	public let person_id: Int
	public let reason: String?
	/// Removes/Restores their comments and posts for that community.
	public let remove_data: Bool?

	public init(auth: String, ban: Bool, community_id: Int, expires: Int? = nil, person_id: Int, reason: String? = nil, remove_data: Bool? = nil) {
		self.auth = auth
		self.ban = ban
		self.community_id = community_id
		self.expires = expires
		self.person_id = person_id
		self.reason = reason
		self.remove_data = remove_data
	}
}
public struct BanFromCommunityResponse: APIResponse {
	public let banned: Bool
	public let person_view: PersonViewSafe
}
