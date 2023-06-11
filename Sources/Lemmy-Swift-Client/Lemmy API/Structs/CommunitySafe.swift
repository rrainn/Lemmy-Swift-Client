//
//  CommunitySafe.swift
//
//
//  Created by Charlie Fish on 6/10/23.
//

import Foundation

public struct CommunitySafe: Codable {
	public let actor_id: String
	public let banner: String?
	public let deleted: Bool
	public let description: String?
	public let hidden: Bool
	public let icon: String?
	public let id: Int
	public let instance_id: Int
	public let local: Bool
	public let name: String
	public let nsfw: Bool
	public let posting_restricted_to_mods: Bool
	public let published: String
	public let removed: Bool
	public let title: String
	public let updated: String?
}
