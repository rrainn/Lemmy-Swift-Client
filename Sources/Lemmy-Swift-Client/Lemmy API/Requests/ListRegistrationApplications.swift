//
//  ListRegistrationApplications.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct ListRegistrationApplicationsRequest: APIRequest {
	public typealias Response = ListRegistrationApplicationsResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/admin/registration_application/list"

	public let auth: String
	public let limit: Int?
	public let page: Int?
	/// Only shows the unread applications (IE those without an admin actor).
	public let unread_only: Bool?

	public init(auth: String, limit: Int? = nil, page: Int? = nil, unread_only: Bool? = nil) {
		self.auth = auth
		self.limit = limit
		self.page = page
		self.unread_only = unread_only
	}
}
public struct ListRegistrationApplicationsResponse: APIResponse {
	public let registration_applications: [RegistrationApplicationView]

	public init(registration_applications: [RegistrationApplicationView]) {
		self.registration_applications = registration_applications
	}
}
