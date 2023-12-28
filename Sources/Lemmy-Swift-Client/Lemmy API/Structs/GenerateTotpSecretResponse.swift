import Foundation

public struct GenerateTotpSecretResponse: Codable, Hashable {
	public let totpSecretUrl: String

	public init(
		totpSecretUrl: String
	) {
		self.totpSecretUrl = totpSecretUrl
	}
}
