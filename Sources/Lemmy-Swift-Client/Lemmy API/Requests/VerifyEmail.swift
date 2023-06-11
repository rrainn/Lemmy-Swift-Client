//
//  VerifyEmail.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct VerifyEmailRequest: APIRequest {
	public typealias Response = VerifyEmailResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/user/verify_email"

	public let token: String

	public init(token: String) {
		self.token = token
	}
}
public struct VerifyEmailResponse: APIResponse {
}
