import Foundation

public struct VerifyEmailRequest: APIRequest {
	public typealias Response = SuccessResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/user/verify_email"

	public let token: String?

	public init(
		token: String? = nil
	) {
		self.token = token
	}
}
