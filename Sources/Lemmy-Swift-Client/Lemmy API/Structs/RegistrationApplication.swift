//
//  RegistrationApplication.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct RegistrationApplication: Codable {
	public let admin_id: Int?
	public let answer: String
	public let deny_reason: String
	public let id: Int
	public let local_user_id: Int
	public let published: String
}
