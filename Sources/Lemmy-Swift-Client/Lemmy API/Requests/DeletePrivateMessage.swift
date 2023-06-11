//
//  DeletePrivateMessage.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct DeletePrivateMessageRequest: APIRequest {
	public typealias Response = PrivateMessageResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/private_message/delete"

	public let auth: String
	public let deleted: Bool
	public let private_message_id: Int

	public init(auth: String, deleted: Bool, private_message_id: Int) {
		self.auth = auth
		self.deleted = deleted
		self.private_message_id = private_message_id
	}
}
