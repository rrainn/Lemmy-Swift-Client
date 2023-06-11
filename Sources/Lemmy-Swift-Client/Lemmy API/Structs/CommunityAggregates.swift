//
//  CommunityAggregates.swift
//
//
//  Created by Charlie Fish on 6/10/23.
//

import Foundation

public struct CommunityAggregates: Codable {
	public let comments: Int
	public let community_id: Int
	public let id: Int
	public let posts: Int
	public let subscribers: Int
	public let users_active_day: Int
	public let users_active_half_year: Int
	public let users_active_month: Int
	public let users_active_week: Int
}
