//
//  GetSite.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct GetSiteRequest: APIRequest {
	public typealias Response = GetSiteResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/site"

	public let auth: String?

	public init(auth: String? = nil) {
		self.auth = auth
	}
}
public struct GetSiteResponse: APIResponse {
	public let admins: [PersonViewSafe]
	public let all_languages: [Language]
	public let discussion_languages: [Int]
	public let federated_instances: FederatedInstances
	public let my_user: MyUserInfo
	public let online: Int
	public let site_view: SiteView
	public let taglines: [Tagline]
	public let version: String
}
