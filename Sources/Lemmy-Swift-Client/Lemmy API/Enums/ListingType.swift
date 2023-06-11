//
//  ListingType.swift
//
//
//  Created by Charlie Fish on 6/10/23.
//

import Foundation

public enum ListingType: String, Codable {
	case all = "All"
	case community = "Community"
	case local = "Local"
	case subscribed = "Subscribed"
}
