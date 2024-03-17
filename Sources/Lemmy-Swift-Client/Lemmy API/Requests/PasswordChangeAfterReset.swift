import Foundation

public struct PasswordChangeAfterResetRequest: APIRequest {
	public typealias Response = SuccessResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/user/password_change"

	public let token: String?
	public let password: String?
	public let password_verify: String?

	public init(
		token: String? = nil,
		password: String? = nil,
		password_verify: String? = nil
	) {
		self.token = token
		self.password = password
		self.password_verify = password_verify
	}
}
