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

	public init(comments: Int, downvotes: Int, featured_community: Bool, featured_local: Bool, id: Int, newest_comment_time: String, newest_comment_time_necro: String, post_id: Int, score: Int, upvotes: Int) {
		self.comments = comments
		self.downvotes = downvotes
		self.featured_community = featured_community
		self.featured_local = featured_local
		self.id = id
		self.newest_comment_time = newest_comment_time
		self.newest_comment_time_necro = newest_comment_time_necro
		self.post_id = post_id
		self.score = score
		self.upvotes = upvotes
	}
}
