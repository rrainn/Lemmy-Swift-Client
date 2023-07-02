import Foundation

public struct LeaveAdminRequest: APIRequest {
	public typealias Response = GetSiteResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/user/leave_admin"

	public let auth: String

	public init(auth: String) {
		self.auth = auth
	}
}
