//
//  GetSiteMetadata.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct GetSiteMetadataRequest: APIRequest {
	public typealias Response = GetSiteMetadataResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/post/site_metadata"

	public let url: String

	public init(url: String) {
		self.url = url
	}
}
public struct GetSiteMetadataResponse: APIResponse {
	public let metadata: SiteMetadata

	public init(metadata: SiteMetadata) {
		self.metadata = metadata
	}
}
