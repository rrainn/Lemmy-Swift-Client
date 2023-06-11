//
//  Post.swift
//
//
//  Created by Charlie Fish on 6/10/23.
//

import Foundation

public struct Post: Codable {
	public let ap_id: String
	public let body: String?
	public let community_id: Int
	public let creator_id: Int
	public let deleted: Bool
	public let embed_description: String?
	public let embed_title: String?
	public let embed_video_url: String?
	public let featured_community: Bool
	public let featured_local: Bool
	public let id: Int
	public let language_id: Int
	public let local: Bool
	public let locked: Bool
	public let name: String
	public let nsfw: Bool
	public let published: String
	public let removed: Bool
	public let thumbnail_url: String?
	public let updated: String?
	public let url: String?
}

