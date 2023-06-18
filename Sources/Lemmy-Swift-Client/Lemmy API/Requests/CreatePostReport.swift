//
//  CreatePostReport.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct CreatePostReportRequest: APIRequest {
	public typealias Response = PostReportResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/post/report"

	public let auth: String
	public let post_id: Int
	public let reason: String

	public init(auth: String, post_id: Int, reason: String) {
		self.auth = auth
		self.post_id = post_id
		self.reason = reason
	}
}
public struct PostReportResponse: APIResponse {
	public let post_report_view: PostReportView

	public init(post_report_view: PostReportView) {
		self.post_report_view = post_report_view
	}
}
