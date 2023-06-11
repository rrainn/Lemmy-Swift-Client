//
//  PostAggregates.swift
//
//
//  Created by Charlie Fish on 6/10/23.
//

import Foundation

public struct PostAggregates: Codable {
	public let comments: Int
	public let downvotes: Int
	public let featured_community: Bool
	public let featured_local: Bool
	public let id: Int
	public let newest_comment_time: String
	/// Newest comment time, limited to 2 days, to prevent necrobumping.
	public let newest_comment_time_necro: String
	public let post_id: Int
	public let score: Int
	public let upvotes: Int
}
