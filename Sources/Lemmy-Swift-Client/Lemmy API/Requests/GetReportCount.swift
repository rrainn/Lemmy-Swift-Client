//
//  GetReportCount.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct GetReportCountRequest: APIRequest {
	public typealias Response = GetReportCountResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/user/report_count"

	public let auth: String
	/// If a community is supplied, returns the report count for only that community, otherwise returns the report count for all communities the user moderates.
	public let community_id: Int?

	public init(auth: String, community_id: Int? = nil) {
		self.auth = auth
		self.community_id = community_id
	}
}
public struct GetReportCountResponse: APIResponse {
	public let comment_reports: Int
	public let community_id: Int?
	public let post_reports: Int
	public let private_message_reports: Int?
}
