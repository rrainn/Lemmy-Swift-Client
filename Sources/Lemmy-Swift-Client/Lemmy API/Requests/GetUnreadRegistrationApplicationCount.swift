//
//  GetUnreadRegistrationApplicationCount.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct GetUnreadRegistrationApplicationCountRequest: APIRequest {
	public typealias Response = GetUnreadRegistrationApplicationCountResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/admin/registration_application/count"

	public let auth: String

	public init(auth: String) {
		self.auth = auth
	}
}
public struct GetUnreadRegistrationApplicationCountResponse: APIResponse {
	public let registration_applications: Int
}
