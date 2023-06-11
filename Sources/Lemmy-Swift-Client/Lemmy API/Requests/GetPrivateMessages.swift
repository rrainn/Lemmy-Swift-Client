//
//  GetPrivateMessages.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct GetPrivateMessagesRequest: APIRequest {
	public typealias Response = PrivateMessagesResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/private_message/list"

	public let auth: String
	public let limit: Int?
	public let page: Int?
	public let unread_only: Bool?

	public init(auth: String, limit: Int? = nil, page: Int? = nil, unread_only: Bool? = nil) {
		self.auth = auth
		self.limit = limit
		self.page = page
		self.unread_only = unread_only
	}
}
public struct PrivateMessagesResponse: APIResponse {
	public let private_messages: [PrivateMessageView]
}
