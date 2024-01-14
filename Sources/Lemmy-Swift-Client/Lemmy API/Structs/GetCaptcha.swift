import Foundation

public struct GetCaptcha: Codable, Hashable {
	public let auth: String?

	public init(
		auth: String? = nil
	) {
		self.auth = auth
	}
}
