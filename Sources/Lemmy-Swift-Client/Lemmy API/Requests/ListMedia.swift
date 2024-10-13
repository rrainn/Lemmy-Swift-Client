import Foundation

public struct ListMediaRequest: APIRequest {
	public typealias Response = ListMediaResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/admin/list_all_media"

	public let page: Int?
	public let limit: Int?

	public init(
		page: Int? = nil,
		limit: Int? = nil
	) {
		self.page = page
		self.limit = limit
	}
}

public struct ListMediaResponse: APIResponse {
	public let images: [LocalImageView]?

	public init(
		images: [LocalImageView]? = nil
	) {
		self.images = images
	}
}
