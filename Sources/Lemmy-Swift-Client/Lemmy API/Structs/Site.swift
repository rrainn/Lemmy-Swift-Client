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

	public init(actor_id: String, banner: String? = nil, description: String? = nil, icon: String? = nil, id: Int, inbox_url: String, instance_id: Int, last_refreshed_at: String, name: String, private_key: String? = nil, public_key: String, published: String, sidebar: String? = nil, updated: String? = nil) {
		self.actor_id = actor_id
		self.banner = banner
		self.description = description
		self.icon = icon
		self.id = id
		self.inbox_url = inbox_url
		self.instance_id = instance_id
		self.last_refreshed_at = last_refreshed_at
		self.name = name
		self.private_key = private_key
		self.public_key = public_key
		self.published = published
		self.sidebar = sidebar
		self.updated = updated
	}
}
