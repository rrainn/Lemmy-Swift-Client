//
//  FeaturePost.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct FeaturePostRequest: APIRequest {
	public typealias Response = PostResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/post/feature"

	public let auth: String
	public let feature_type: PostFeatureType
	public let featured: Bool
	public let post_id: Int

	public init(auth: String, feature_type: PostFeatureType, featured: Bool, post_id: Int) {
		self.auth = auth
		self.feature_type = feature_type
		self.featured = featured
		self.post_id = post_id
	}
}
