//
//  ListingType.swift
//
//
//  Created by Charlie Fish on 6/10/23.
//

import Foundation

public enum ListingType: String, Codable, CustomStringConvertible, CaseIterable {
	case all = "All"
	case local = "Local"
	case subscribed = "Subscribed"
	case community = "Community"

	public var description: String {
		return self.rawValue
	}
}
