//
//  BanPerson.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct BanPersonRequest: APIRequest {
	public typealias Response = BanPersonResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/user/ban"

	public let auth: String
	public let ban: Bool
	/// The expire time in Unix seconds.
	public let expires: Int?
	public let person_id: Int
	public let reason: String?
	/// Removes/Restores their comments, posts, and communities.
	public let remove_data: Bool?
}
public struct BanPersonResponse: APIResponse {
	public let banned: Bool
	public let person_view: PersonViewSafe
}
