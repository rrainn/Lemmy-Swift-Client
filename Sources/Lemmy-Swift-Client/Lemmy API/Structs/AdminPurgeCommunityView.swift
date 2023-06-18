//
//  AdminPurgeCommunityView.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct AdminPurgeCommunityView: Codable {
	public let admin: PersonSafe?
	public let admin_purge_community: AdminPurgeCommunity

	public init(admin: PersonSafe? = nil, admin_purge_community: AdminPurgeCommunity) {
		self.admin = admin
		self.admin_purge_community = admin_purge_community
	}
}
