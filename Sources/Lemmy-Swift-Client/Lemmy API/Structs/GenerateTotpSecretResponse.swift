import Foundation

public struct GenerateTotpSecretResponse: Codable, Hashable {
	public let totp_secret_url: String?

	public init(
		totp_secret_url: String? = nil
	) {
		self.totp_secret_url = totp_secret_url
	}
}
