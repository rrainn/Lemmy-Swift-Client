//
//  PostReportView.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct PostReportView: Codable {
	public let community: CommunitySafe
	public let counts: PostAggregates
	public let creator: PersonSafe
	public let creator_banned_from_community: Bool
	public let my_vote: Int?
	public let post: Post
	public let post_creator: PersonSafe
	public let post_report: PostReport
	public let resolver: PersonSafe?
}
