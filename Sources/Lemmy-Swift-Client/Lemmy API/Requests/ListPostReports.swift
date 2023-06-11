//
//  ListPostReports.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct ListPostReportsRequest: APIRequest {
	public typealias Response = ListPostReportsResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/post/report/list"

	public let auth: String
	/// If no community is given, it returns reports for all communities moderated by the auth user.
	public let community_id: Int?
	public let limit: Int?
	public let page: Int?
	/// Only shows the unresolved reports.
	public let unresovled_only: Bool?

	public init(auth: String, community_id: Int? = nil, limit: Int? = nil, page: Int? = nil, unresovled_only: Bool? = nil) {
		self.auth = auth
		self.community_id = community_id
		self.limit = limit
		self.page = page
		self.unresovled_only = unresovled_only
	}
}
public struct ListPostReportsResponse: APIResponse {
	public let post_reports: [PostReportView]
}
