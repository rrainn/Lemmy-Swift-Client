//
//  CommentReplyView.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct CommentReplyView: Codable {
	public let comment: Comment
	public let comment_reply: CommentReply
	public let community: CommunitySafe
	public let counts: CommentAggregates
	public let creator: PersonSafe
	public let creator_banned_from_community: Bool
	public let creator_blocked: Bool
	public let my_vote: Int?
	public let post: Post
	public let recipient: PersonSafe
	public let saved: Bool
	public let subscribed: SubscribedType
}
