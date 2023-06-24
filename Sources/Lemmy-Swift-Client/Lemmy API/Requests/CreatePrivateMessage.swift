//
//  CreatePrivateMessage.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct CreatePrivateMessageRequest: APIRequest {
	public typealias Response = PrivateMessageResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/private_message"

	public let auth: String
	public let content: String
	public let recipient_id: Int

	public init(auth: String, content: String, recipient_id: Int) {
		self.auth = auth
		self.content = content
		self.recipient_id = recipient_id
	}
}
public struct PrivateMessageResponse: APIResponse {
	public let private_message_view: PrivateMessageView

	public init(private_message_view: PrivateMessageView) {
		self.private_message_view = private_message_view
	}
}
