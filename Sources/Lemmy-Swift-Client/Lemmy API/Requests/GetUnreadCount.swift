//
//  GetUnreadCount.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct GetUnreadCountRequest: APIRequest {
	public typealias Response = GetUnreadCountResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/user/unread_count"

	public let auth: String

	public init(auth: String) {
		self.auth = auth
	}
}
public struct GetUnreadCountResponse: APIResponse {
	public let mentions: Int
	public let private_messages: Int
	public let replies: Int

	public init(mentions: Int, private_messages: Int, replies: Int) {
		self.mentions = mentions
		self.private_messages = private_messages
		self.replies = replies
	}
}
