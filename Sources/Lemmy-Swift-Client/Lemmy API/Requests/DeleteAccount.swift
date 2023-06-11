//
//  DeleteAccount.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct DeleteAccountRequest: APIRequest {
	public typealias Response = DeleteAccountResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/user/delete_account"

	public let auth: String
	public let password: String

	public init(auth: String, password: String) {
		self.auth = auth
		self.password = password
	}
}
public struct DeleteAccountResponse: APIResponse {
}
