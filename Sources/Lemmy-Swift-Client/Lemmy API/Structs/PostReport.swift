//
//  PostReport.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct PostReport: Codable {
	public let creator_id: Int
	public let id: Int
	public let original_post_body: String?
	public let original_post_name: String
	public let original_post_url: String?
	public let post_id: Int
	public let published: String
	public let reason: String
	public let resolved: Bool
	public let resolved_id: Int?
	public let updated: String?

	public init(creator_id: Int, id: Int, original_post_body: String? = nil, original_post_name: String, original_post_url: String? = nil, post_id: Int, published: String, reason: String, resolved: Bool, resolved_id: Int? = nil, updated: String? = nil) {
		self.creator_id = creator_id
		self.id = id
		self.original_post_body = original_post_body
		self.original_post_name = original_post_name
		self.original_post_url = original_post_url
		self.post_id = post_id
		self.published = published
		self.reason = reason
		self.resolved = resolved
		self.resolved_id = resolved_id
		self.updated = updated
	}
}
