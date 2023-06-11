//
//  PrivateMessageReport.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct PrivateMessageReport: Codable {
	public let creator_id: Int
	public let id: Int
	public let original_pm_text: String
	public let private_message_id: Int
	public let published: String
	public let reason: String
	public let resolved: Bool
	public let resolver_id: Int?
	public let updated: String?
}
