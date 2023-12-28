import Foundation

public struct UpdateTotpRequest: APIRequest {
	public typealias Response = UpdateTotpResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/user/totp/update"

	public let totpToken: String
	public let enabled: Bool

	public init(
		totpToken: String,
		enabled: Bool
	) {
		self.totpToken = totpToken
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
