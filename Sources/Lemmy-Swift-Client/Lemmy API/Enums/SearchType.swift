//
//  SearchType.swift
//
//
//  Created by Charlie Fish on 6/10/23.
//

import Foundation

public enum SearchType: String, Codable, CustomStringConvertible {
	case all = "All"
	case comments = "Comments"
	case communities = "Communities"
	case posts = "Posts"
	case url = "Url"
	case users = "Users"

	public var description: String {
		return self.rawValue
	}
}
