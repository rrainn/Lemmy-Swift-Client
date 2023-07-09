import Foundation

public struct LoginRequest: APIRequest {
	public typealias Response = LoginResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/user/login"

	public let username_or_email: String
	public let password: String
	public let totp_2fa_token: String?

	public init(
		username_or_email: String,
		password: String,
		totp_2fa_token: String? = nil
	) {
		self.username_or_email = username_or_email
		self.password = password
		self.totp_2fa_token = totp_2fa_token
	}
}
