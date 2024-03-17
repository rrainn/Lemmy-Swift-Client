import Foundation

public struct GetFederatedInstancesResponse: Codable, Hashable {
	public let federated_instances: FederatedInstances?

	public init(
		federated_instances: FederatedInstances? = nil
	) {
		self.federated_instances = federated_instances
	}
}
