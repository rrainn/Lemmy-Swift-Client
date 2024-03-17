import Foundation

public struct FeaturePostRequest: APIRequest {
	public typealias Response = PostResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/post/feature"

	public let post_id: PostId
	public let featured: Bool
	public let feature_type: PostFeatureType

	public init(
		post_id: PostId,
		featured: Bool,
		feature_type: PostFeatureType
	) {
		self.post_id = post_id
		self.featured = featured
		self.feature_type = feature_type
	}
}
