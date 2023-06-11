//
//  Comment.swift
//
//
//  Created by Charlie Fish on 6/10/23.
//

import Foundation

public struct Comment: Codable {
	public let ap_id: String
	public let content: String
	public let creator_id: Int
	public let deleted: Bool
	public let distinguished: Bool
	public let id: Int
	public let language_id: Int
	public let local: Bool
	public let path: String
	public let post_id: Int
	public let published: String
	public let removed: Bool
	public let updated: String?
}
