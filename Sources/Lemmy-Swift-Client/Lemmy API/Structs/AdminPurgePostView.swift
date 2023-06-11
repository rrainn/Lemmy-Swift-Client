//
//  AdminPurgePostView.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct AdminPurgePostView: Codable {
	public let admin: PersonSafe?
	public let admin_purge_post: AdminPurgePost
	public let community: CommunitySafe
}
