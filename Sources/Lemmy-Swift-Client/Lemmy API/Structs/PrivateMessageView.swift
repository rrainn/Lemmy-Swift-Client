//
//  PrivateMessageView.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct PrivateMessageView: Codable {
	public let creator: PersonSafe
	public let private_message: PrivateMessage
	public let recipient: PersonSafe
}
