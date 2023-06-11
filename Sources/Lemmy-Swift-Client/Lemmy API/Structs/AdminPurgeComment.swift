//
//  AdminPurgeComment.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct AdminPurgeComment: Codable {
	public let admin_person_id: Int
	public let id: Int
	public let post_id: Int
	public let reason: String?
	public let when_: String
}
