//
//  SiteAggregates.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct SiteAggregates: Codable {
	public let comments: Int
	public let communities: Int
	public let id: Int
	public let posts: Int
	public let site_id: Int
	public let users: Int
	public let users_active_day: Int
	public let users_active_half_year: Int
	public let users_active_month: Int
	public let users_active_week: Int
}
