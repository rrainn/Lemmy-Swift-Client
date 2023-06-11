//
//  SubscribedType.swift
//
//
//  Created by Charlie Fish on 6/10/23.
//

import Foundation

public enum SubscribedType: String, Codable {
	case notSubscribed = "NotSubscribed"
	case pending = "Pending"
	case subscribed = "Subscribed"
}
