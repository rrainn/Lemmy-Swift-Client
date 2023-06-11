//
//  Site.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct Site: Codable {
	public let actor_id: String
	public let banner: String?
	public let description: String?
	public let icon: String?
	public let id: Int
	public let inbox_url: String
	public let instance_id: Int
	public let last_refreshed_at: String
	public let name: String
	public let private_key: String?
	public let public_key: String
	public let published: String
	public let sidebar: String?
	public let updated: String?
}
