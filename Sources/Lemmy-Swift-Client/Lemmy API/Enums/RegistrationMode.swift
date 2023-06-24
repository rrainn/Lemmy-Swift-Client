//
//  RegistrationMode.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public enum RegistrationMode: String, Codable, CustomStringConvertible, CaseIterable {
	case closed = "closed"
	case open = "open"
	case requireApplication = "requireapplication"

	public var description: String {
		return self.rawValue
	}
}
