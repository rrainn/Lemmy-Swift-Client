import Foundation

public struct PasswordChangeAfterResetRequest: APIRequest {
	public typealias Response = LoginResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/user/password_change"

	public let token: String
	public let password: String
	public let password_verify: String

	public init(
		token: String,
		password: String,
		password_verify: String
	) {
		self.token = token
		self.password = password
		self.password_verify = password_verify
	}
}
