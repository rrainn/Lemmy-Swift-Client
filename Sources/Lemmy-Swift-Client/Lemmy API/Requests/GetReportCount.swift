import Foundation

public struct GetReportCountRequest: APIRequest {
	public typealias Response = GetReportCountResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/user/report_count"

	public let communityId: CommunityId?

	public init(
		communityId: CommunityId? = nil
	) {
		self.communityId = communityId
	}
}

public struct GetReportCountResponse: APIResponse {
	public let communityId: CommunityId?
	public let commentReports: Int
	public let postReports: Int
	public let privateMessageReports: Int?

	public init(
		communityId: CommunityId? = nil,
		commentReports: Int,
		postReports: Int,
		privateMessageReports: Int? = nil
	) {
		self.communityId = communityId
		self.commentReports = commentReports
		self.postReports = postReports
		self.privateMessageReports = privateMessageReports
	}
}
