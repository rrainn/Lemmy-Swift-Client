//
//  Tagline.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct Tagline: Codable {
	public let content: String
	public let id: Int
	public let local_site_id: Int
	public let published: String
	public let updated: String?
}
