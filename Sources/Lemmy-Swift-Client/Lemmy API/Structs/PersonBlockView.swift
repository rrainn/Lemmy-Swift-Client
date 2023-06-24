//
//  PersonBlockView.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct PersonBlockView: Codable {
	public let person: PersonSafe
	public let target: PersonSafe

	public init(person: PersonSafe, target: PersonSafe) {
		self.person = person
		self.target = target
	}
}
