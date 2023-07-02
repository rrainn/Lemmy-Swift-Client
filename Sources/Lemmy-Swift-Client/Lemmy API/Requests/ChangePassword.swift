import Foundation

public struct ChangePasswordRequest: APIRequest {
	public typealias Response = LoginResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/user/change_password"

	public let auth: String
	public let new_password: String
	public let new_password_verify: String
	public let old_password: String

	public init(
		auth: String,
		new_password: String,
		new_password_verify: String,
		old_password: String
	) {
		self.auth = auth
		self.new_password = new_password
		self.new_password_verify = new_password_verify
		self.old_password = old_password
	}
}
