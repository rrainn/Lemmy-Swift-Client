//
//  RegistrationMode.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public enum RegistrationMode: String, Codable, CustomStringConvertible {
	case closed = "closed"
	case open = "open"
	case requireApplication = "RequireApplication"

	public var description: String {
		return self.rawValue
	}
}
