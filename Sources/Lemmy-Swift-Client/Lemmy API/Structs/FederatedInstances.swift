//
//  FederatedInstances.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct FederatedInstances: Codable {
	public let allowed: [String]?
	public let blocked: [String]?
	public let linked: [String]
}
