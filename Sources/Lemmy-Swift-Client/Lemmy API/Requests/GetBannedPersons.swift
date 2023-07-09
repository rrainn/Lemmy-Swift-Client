import Foundation

public struct GetBannedPersonsRequest: APIRequest {
	public typealias Response = BannedPersonsResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/user/banned"

	public let auth: String

	public init(
		auth: String
	) {
		self.auth = auth
	}
}

public struct BannedPersonsResponse: APIResponse {
	public let banned: [PersonView]

	public init(
		banned: [PersonView]
	) {
		self.banned = banned
	}
}
