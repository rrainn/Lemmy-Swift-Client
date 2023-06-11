//
//  TransferCommunity.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct TransferCommunityRequest: APIRequest {
	public typealias Response = GetCommunityResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/community/transfer"

	public let auth: String
	public let community_id: Int
	public let person_id: Int

	public init(auth: String, community_id: Int, person_id: Int) {
		self.auth = auth
		self.community_id = community_id
		self.person_id = person_id
	}
}
