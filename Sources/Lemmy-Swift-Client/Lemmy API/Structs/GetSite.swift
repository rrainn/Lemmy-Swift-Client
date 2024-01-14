import Foundation

public struct GetSite: Codable, Hashable {
	public let auth: String?

	public init(
		auth: String? = nil
	) {
		self.auth = auth
	}
}
