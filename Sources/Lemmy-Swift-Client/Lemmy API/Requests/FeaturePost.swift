import Foundation

public struct FeaturePostRequest: APIRequest {
	public typealias Response = PostResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/post/feature"

	public let postId: PostId
	public let featured: Bool
	public let featureType: PostFeatureType

	public init(
		postId: PostId,
		featured: Bool,
		featureType: PostFeatureType
	) {
		self.postId = postId
		self.featured = featured
		self.featureType = featureType
	}
}
