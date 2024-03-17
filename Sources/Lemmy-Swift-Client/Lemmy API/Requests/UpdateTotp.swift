import Foundation

public struct UpdateTotpRequest: APIRequest {
	public typealias Response = UpdateTotpResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/user/totp/update"

	public let totp_token: String
	public let enabled: Bool

	public init(
		totp_token: String,
		enabled: Bool
	) {
		self.totp_token = totp_token
		self.enabled = enabled
	}
}

public struct UpdateTotpResponse: APIResponse {
	public let enabled: Bool

	public init(
		enabled: Bool
	) {
		self.enabled = enabled
	}
}
