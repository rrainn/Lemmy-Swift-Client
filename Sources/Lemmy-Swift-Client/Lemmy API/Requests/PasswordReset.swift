import Foundation

public struct PasswordResetRequest: APIRequest {
	public typealias Response = SuccessResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/user/password_reset"

	public let email: String

	public init(
		email: String
	) {
		self.email = email
	}
}
