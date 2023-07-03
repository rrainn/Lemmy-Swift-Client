import Foundation

public struct FederatedInstances: Codable, Hashable {
	public let allowed: [String]?
	public let blocked: [String]?
	public let linked: [String]

	public init(allowed: [String]? = nil, blocked: [String]? = nil, linked: [String]) {
		self.allowed = allowed
		self.blocked = blocked
		self.linked = linked
	}
}
