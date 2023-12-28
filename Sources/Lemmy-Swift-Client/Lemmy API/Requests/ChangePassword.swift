import Foundation

public struct ChangePasswordRequest: APIRequest {
	public typealias Response = LoginResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/user/change_password"

	public let newPassword: String
	public let newPasswordVerify: String
	public let oldPassword: String

	public init(
		newPassword: String,
		newPasswordVerify: String,
		oldPassword: String
	) {
		self.newPassword = newPassword
		self.newPasswordVerify = newPasswordVerify
		self.oldPassword = oldPassword
	}
}
