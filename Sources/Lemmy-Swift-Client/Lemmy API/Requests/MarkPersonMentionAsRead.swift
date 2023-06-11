//
//  MarkPersonMentionAsRead.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct MarkPersonMentionAsReadRequest: APIRequest {
	public typealias Response = PersonMentionResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/user/mention/mark_as_read"

	public let auth: String
	public let person_mention_id: Int
	public let read: Bool

	public init(auth: String, person_mention_id: Int, read: Bool) {
		self.auth = auth
		self.person_mention_id = person_mention_id
		self.read = read
	}
}
public struct PersonMentionResponse: APIResponse {
	public let person_mention_view: PersonMentionView
}
