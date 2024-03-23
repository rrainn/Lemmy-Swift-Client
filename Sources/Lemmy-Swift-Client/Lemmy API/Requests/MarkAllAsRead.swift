public struct MarkAllAsReadRequest: APIRequest {
	public typealias Response = GetRepliesResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/user/mark_all_as_read"
	
	public init() {}
}
