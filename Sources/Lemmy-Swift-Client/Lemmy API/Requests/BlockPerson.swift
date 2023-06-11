//
//  BlockPerson.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct BlockPersonRequest: APIRequest {
	public typealias Response = BlockPersonResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/user/block"

	public let auth: String
	public let block: Bool
	public let person_id: Int

	public init(auth: String, block: Bool, person_id: Int) {
		self.auth = auth
		self.block = block
		self.person_id = person_id
	}
}
public struct BlockPersonResponse: APIResponse {
	public let blocked: Bool
	public let person_view: PersonViewSafe
}
