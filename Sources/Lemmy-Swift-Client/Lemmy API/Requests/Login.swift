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
	/// The JSON Web Token for the user.
	///
	/// This token can be passed into `auth` parameters of other requests to make authorized requests.
	///
	/// If you are registering a new account, this property will be `nil` if email verification is enabled, or if the server requires registration applications.
	///
	/// It will also be `nil` if the login is wrong.
	public let jwt: String?
	public let registration_created: Bool
	public let verify_email_sent: Bool

	public init(jwt: String, registration_created: Bool, verify_email_sent: Bool) {
		self.jwt = jwt
		self.registration_created = registration_created
		self.verify_email_sent = verify_email_sent
	}
}
