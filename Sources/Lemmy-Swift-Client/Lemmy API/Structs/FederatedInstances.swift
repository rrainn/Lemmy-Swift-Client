import Foundation

public struct FederatedInstances: Codable, Hashable {
	public let linked: [InstanceWithFederationState]?
	public let allowed: [InstanceWithFederationState]?
	public let blocked: [InstanceWithFederationState]?

	public init(
		linked: [InstanceWithFederationState]? = nil,
		allowed: [InstanceWithFederationState]? = nil,
		blocked: [InstanceWithFederationState]? = nil
	) {
		self.linked = linked
		self.allowed = allowed
		self.blocked = blocked
	}
}
