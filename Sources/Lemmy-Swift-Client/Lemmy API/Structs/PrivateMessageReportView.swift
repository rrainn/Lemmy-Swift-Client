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

	public init(creator: PersonSafe, private_message: PrivateMessage, private_message_creator: PersonSafe, private_message_report: PrivateMessageReport, resolver: PersonSafe? = nil) {
		self.creator = creator
		self.private_message = private_message
		self.private_message_creator = private_message_creator
		self.private_message_report = private_message_report
		self.resolver = resolver
	}
}
