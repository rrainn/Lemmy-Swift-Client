//
//  ListPrivateMessageReports.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct ListPrivateMessageReportsRequest: APIRequest {
	public typealias Response = ListPrivateMessageReportsResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/private_message/report/list"

	public let auth: String
	public let limit: Int?
	public let page: Int?
	public let unresolved_only: Bool?

	public init(auth: String, limit: Int? = nil, page: Int? = nil, unresolved_only: Bool? = nil) {
		self.auth = auth
		self.limit = limit
		self.page = page
		self.unresolved_only = unresolved_only
	}
}
public struct ListPrivateMessageReportsResponse: APIResponse {
	public let private_message_reports: [PrivateMessageReportView]

	public init(private_message_reports: [PrivateMessageReportView]) {
		self.private_message_reports = private_message_reports
	}
}
