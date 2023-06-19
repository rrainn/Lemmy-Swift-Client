//
//  ListCommentReports.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct ListCommentReportsRequest: APIRequest {
	public typealias Response = ListCommentReportsResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/comment/report/list"

	public let auth: String
	/// If no community is given, it returns reports for all communities moderated by the auth user.
	public let community_id: Int?
	public let limit: Int?
	public let page: Int?
	/// Only shows the unresolved reports.
	public let unresolved_only: Bool?

	public init(auth: String, community_id: Int? = nil, limit: Int? = nil, page: Int? = nil, unresolved_only: Bool? = nil) {
		self.auth = auth
		self.community_id = community_id
		self.limit = limit
		self.page = page
		self.unresolved_only = unresolved_only
	}
}
public struct ListCommentReportsResponse: APIResponse {
	public let comment_reports: [CommentReportView]

	public init(comment_reports: [CommentReportView]) {
		self.comment_reports = comment_reports
	}
}
