//
//  MarkPrivateMessageAsRead.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct MarkPrivateMessageAsReadRequest: APIRequest {
	public typealias Response = PrivateMessageResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/private_message/mark_as_read"

	public let auth: String
	public let private_message_id: Int
	public let read: Bool

	public init(auth: String, private_message_id: Int, read: Bool) {
		self.auth = auth
		self.private_message_id = private_message_id
		self.read = read
	}
}
