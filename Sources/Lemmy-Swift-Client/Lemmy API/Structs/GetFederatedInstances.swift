import Foundation

public struct GetFederatedInstances: Codable, Hashable {
	public let auth: String?

	public init(
		auth: String? = nil
	) {
		self.auth = auth
	}
}
