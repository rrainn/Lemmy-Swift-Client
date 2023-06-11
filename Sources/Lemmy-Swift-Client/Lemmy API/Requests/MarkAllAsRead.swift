//
//  MarkAllAsRead.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct MarkAllAsReadRequest: APIRequest {
	public typealias Response = GetRepliesResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/user/mark_all_as_read"

	public let auth: String

	public init(auth: String) {
		self.auth = auth
	}
}
