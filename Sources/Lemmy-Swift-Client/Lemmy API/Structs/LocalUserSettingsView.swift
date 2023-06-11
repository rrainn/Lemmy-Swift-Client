//
//  LocalUserSettingsView.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct LocalUserSettingsView: Codable {
	public let counts: PersonAggregates
	public let local_user: LocalUserSettings
	public let person: PersonSafe
}
