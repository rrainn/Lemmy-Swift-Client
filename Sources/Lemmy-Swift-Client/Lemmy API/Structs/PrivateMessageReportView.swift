//
//  PrivateMessageReportView.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct PrivateMessageReportView: Codable {
	public let creator: PersonSafe
	public let private_message: PrivateMessage
	public let private_message_creator: PersonSafe
	public let private_message_report: PrivateMessageReport
	public let resolver: PersonSafe?
}
