//
//  SubscribedType.swift
//
//
//  Created by Charlie Fish on 6/10/23.
//

import Foundation

public enum SubscribedType: String, Codable, CustomStringConvertible {
	case notSubscribed = "NotSubscribed"
	case pending = "Pending"
	case subscribed = "Subscribed"

	public var description: String {
		return self.rawValue
	}
}
