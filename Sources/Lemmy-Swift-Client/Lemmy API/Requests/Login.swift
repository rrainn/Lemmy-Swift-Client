import Foundation

public struct LoginRequest: APIRequest {
	public typealias Response = LoginResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/user/login"

	public let usernameOrEmail: String
	public let password: String
	public let totp_2faToken: String?

	public init(
		usernameOrEmail: String,
		password: String,
		totp_2faToken: String? = nil
	) {
		self.usernameOrEmail = usernameOrEmail
		self.password = password
		self.totp_2faToken = totp_2faToken
	}
}
