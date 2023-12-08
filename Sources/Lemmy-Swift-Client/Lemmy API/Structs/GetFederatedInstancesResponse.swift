import Foundation

public struct GetFederatedInstancesResponse: Codable, Hashable {
	public let federatedInstances: FederatedInstances?

	public init(
		federatedInstances: FederatedInstances? = nil
	) {
		self.federatedInstances = federatedInstances
	}
}
