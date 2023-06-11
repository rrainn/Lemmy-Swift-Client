//
//  RegistrationApplicationView.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct RegistrationApplicationView: Codable {
	public let admin: PersonSafe?
	public let creator: PersonSafe
	public let creator_local_user: LocalUserSettings
	public let registration_application: RegistrationApplication
}
