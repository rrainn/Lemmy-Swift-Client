import Foundation

public struct PasswordChangeAfterResetRequest: APIRequest {
	public typealias Response = SuccessResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/user/password_change"

	public let token: String
	public let password: String
	public let passwordVerify: String

	public init(
		token: String,
		password: String,
		passwordVerify: String
	) {
		self.token = token
		self.password = password
		self.passwordVerify = passwordVerify
	}
}
