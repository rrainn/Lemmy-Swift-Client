import Foundation

public struct GetCaptchaRequest: APIRequest {
	public typealias Response = GetCaptchaResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/user/get_captcha"

	public let auth: String?

	public init(
		auth: String? = nil
	) {
		self.auth = auth
	}
}

public struct GetCaptchaResponse: APIResponse {
	public let ok: CaptchaResponse?

	public init(
		ok: CaptchaResponse? = nil
	) {
		self.ok = ok
	}
}
