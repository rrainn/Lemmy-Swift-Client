//
//  PersonAggregates.swift
//
//
//  Created by Charlie Fish on 6/10/23.
//

import Foundation

public struct PersonAggregates: Codable {
	public let comment_count: Int
	public let comment_score: Int
	public let id: Int
	public let person_id: Int
	public let post_count: Int
	public let post_score: Int
}
