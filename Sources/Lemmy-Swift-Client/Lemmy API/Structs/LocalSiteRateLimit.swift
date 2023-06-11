//
//  LocalSiteRateLimit.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct LocalSiteRateLimit: Codable {
	public let comment: Int
	public let comment_per_second: Int
	public let id: Int
	public let image: Int
	public let image_per_second: Int
	public let local_site_id: Int
	public let message: Int
	public let message_per_second: Int
	public let post: Int
	public let post_per_second: Int
	public let published: String
	public let register: Int
	public let register_per_second: Int
	public let search: Int
	public let search_per_second: Int
	public let updated: String?
}
