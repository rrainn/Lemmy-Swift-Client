//
//  PostFeatureType.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public enum PostFeatureType: String, Codable, CustomStringConvertible, CaseIterable {
	case community = "Community"
	case local = "Local"

	public var description: String {
		return self.rawValue
	}
}
