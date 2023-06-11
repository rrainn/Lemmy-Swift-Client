//
//  CommunityView.swift
//
//
//  Created by Charlie Fish on 6/10/23.
//

import Foundation

public struct CommunityView: Codable {
	public let blocked: Bool
	public let community: CommunitySafe
	public let counts: CommunityAggregates
	public let subscribed: SubscribedType
}
