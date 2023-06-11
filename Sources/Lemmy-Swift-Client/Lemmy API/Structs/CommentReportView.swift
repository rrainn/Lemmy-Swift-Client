//
//  CommentReportView.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct CommentReportView: Codable {
	public let comment: Comment
	public let comment_creator: PersonSafe
	public let comment_report: CommentReport
	public let community: CommunitySafe
	public let counts: CommentAggregates
	public let creator: PersonSafe
	public let creator_banned_from_community: Bool
	public let my_vote: Int?
	public let post: Post
	public let resolver: PersonSafe?
}
