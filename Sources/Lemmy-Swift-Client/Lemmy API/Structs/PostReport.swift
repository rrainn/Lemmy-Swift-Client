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
}
