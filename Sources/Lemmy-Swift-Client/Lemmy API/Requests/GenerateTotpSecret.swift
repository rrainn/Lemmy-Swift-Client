public struct GenerateTotpSecretRequest: APIRequest {
	public typealias Response = GenerateTotpSecretResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/user/totp/generate"
	
	public init() {}
}

public struct GenerateTotpSecretResponse: APIResponse {
	public let totp_secret_url: String?

	public init(
		totp_secret_url: String? = nil
	) {
		self.totp_secret_url = totp_secret_url
	}
}
