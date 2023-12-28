import Foundation

public struct FederatedInstances: Codable, Hashable {
	public let linked: [InstanceWithFederationState]
	public let allowed: [InstanceWithFederationState]
	public let blocked: [InstanceWithFederationState]

	public init(
		linked: [InstanceWithFederationState],
		allowed: [InstanceWithFederationState],
		blocked: [InstanceWithFederationState]
	) {
		self.linked = linked
		self.allowed = allowed
		self.blocked = blocked
	}
}
