//
//  PersonMention.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct PersonMention: Codable {
	public let comment_id: Int
	public let id: Int
	public let published: String
	public let read: Bool
	public let recipient_id: Int
}
