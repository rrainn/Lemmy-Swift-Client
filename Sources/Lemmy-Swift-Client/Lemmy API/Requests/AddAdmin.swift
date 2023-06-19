//
//  AddAdmin.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct AddAdminRequest: APIRequest {
	public typealias Response = AddAdminResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/admin/add"

	public let added: Bool
	public let auth: String
	public let person_id: Int

	public init(added: Bool, auth: String, person_id: Int) {
		self.added = added
		self.auth = auth
		self.person_id = person_id
	}
}
public struct AddAdminResponse: APIResponse {
	public let admins: [PersonViewSafe]

	public init(admins: [PersonViewSafe]) {
		self.admins = admins
	}
}
