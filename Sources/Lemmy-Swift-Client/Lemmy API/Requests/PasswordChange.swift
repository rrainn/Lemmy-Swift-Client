import Foundation

public struct PasswordChangeRequest: APIRequest {
	public typealias Response = LoginResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/user/password_change"

	public let password: String
	public let password_verify: String
	public let token: String

	public init(password: String, password_verify: String, token: String) {
		self.password = password
		self.password_verify = password_verify
		self.token = token
	}
}
