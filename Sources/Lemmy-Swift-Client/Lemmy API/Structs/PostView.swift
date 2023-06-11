//
//  PostView.swift
//
//
//  Created by Charlie Fish on 6/10/23.
//

import Foundation

public struct PostView: Codable {
	public let community: CommunitySafe
	public let counts: PostAggregates
	public let creator: PersonSafe
	public let creator_banned_from_community: Bool
	public let creator_blocked: Bool
	public let my_vote: Int?
	public let post: Post
	public let read: Bool
	public let saved: Bool
	public let subscribed: SubscribedType
	public let unread_comments: Int
}
