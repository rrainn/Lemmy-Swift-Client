//
//  Login.swift
//
//
//  Created by Charlie Fish on 6/10/23.
//

import Foundation

public struct LoginRequest: APIRequest {
	public typealias Response = LoginResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/user/login"

	public let username_or_email: String
	public let password: String

	public init(username_or_email: String, password: String) {
		self.username_or_email = username_or_email
		self.password = password
	}
}
public struct LoginResponse: APIResponse {
	public let jwt: String
	public let registration_created: Bool
	public let verify_email_sent: Bool
}
