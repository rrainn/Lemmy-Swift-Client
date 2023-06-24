//
//  PersonViewSafe.swift
//
//
//  Created by Charlie Fish on 6/10/23.
//

import Foundation

public struct PersonViewSafe: Codable {
	public let counts: PersonAggregates
	public let person: PersonSafe

	public init(counts: PersonAggregates, person: PersonSafe) {
		self.counts = counts
		self.person = person
	}
}
