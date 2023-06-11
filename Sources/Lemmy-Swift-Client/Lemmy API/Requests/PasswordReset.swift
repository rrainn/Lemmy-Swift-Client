//
//  PasswordReset.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct PasswordResetRequest: APIRequest {
	public typealias Response = PasswordResetResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/user/password_reset"

	public let email: String

	public init(email: String) {
		self.email = email
	}
}
public struct PasswordResetResponse: APIResponse {
}
