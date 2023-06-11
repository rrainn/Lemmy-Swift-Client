//
//  AddModToCommunity.swift
//  
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct AddModToCommunityRequest: APIRequest {
	public typealias Response = AddModToCommunityResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/community/mod"

	public let added: Bool
	public let auth: String
	public let community_id: Int
	public let person_id: Int

	public init(added: Bool, auth: String, community_id: Int, person_id: Int) {
		self.added = added
		self.auth = auth
		self.community_id = community_id
		self.person_id = person_id
	}
}
public struct AddModToCommunityResponse: APIResponse {
	public let moderators: [CommunityModeratorView]
}
